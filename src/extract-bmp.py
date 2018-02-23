import pefile
from struct import pack, unpack

def main():
    pe = pefile.PE('./uncompressed.exe')
    rt_bitmap_idx = [entry.id for entry in pe.DIRECTORY_ENTRY_RESOURCE.entries].index(pefile.RESOURCE_TYPE['RT_BITMAP'])
    rt_bitmap_dir = pe.DIRECTORY_ENTRY_RESOURCE.entries[rt_bitmap_idx]
    
    for entry in rt_bitmap_dir.directory.entries:
        name = str(entry.name)
        print('extacting ' + name + '.bmp...')
        data_rva = entry.directory.entries[0].data.struct.OffsetToData
        size = entry.directory.entries[0].data.struct.Size

        data = pe.get_memory_mapped_image()[data_rva:data_rva+size]
        dib_size = unpack('<I', data[0:4])[0]
        header = create_header(size, dib_size)

        with open('./images/' + name + '.bmp', 'wb') as f:
            f.write(header)
            f.write(data)


def create_header(res_size, dib_size):
    ident = bytearray(b'BM')
    size_all = pack('<I', res_size + 14)
    reserved = pack('hh', 0, 0)
    start_byte = pack('<I', 14 + dib_size)
    return ident + size_all + reserved + start_byte


if __name__ == '__main__':
    main()
