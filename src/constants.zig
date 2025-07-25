const std = @import("std");
const elf = std.elf;

pub const Machine = elf.EM;
pub const Type = elf.ET;
pub const OSABI = elf.OSABI;

pub const ProgType = enum(u32) {
    PT_NULL = elf.PT_NULL,
    PT_LOAD = elf.PT_LOAD,
    PT_DYNAMIC = elf.PT_DYNAMIC,
    PT_INTERP = elf.PT_INTERP,
    PT_NOTE = elf.PT_NOTE,
    PT_SHLIB = elf.PT_SHLIB,
    PT_PHDR = elf.PT_PHDR,
    PT_TLS = elf.PT_TLS,

    PT_LOOS = elf.PT_LOOS,
    PT_HIOS = elf.PT_HIOS,

    PT_GNU_EH_FRAME = elf.PT_GNU_EH_FRAME,
    PT_GNU_STACK = elf.PT_GNU_STACK,
    PT_GNU_RELRO = elf.PT_GNU_RELRO,
    PT_GNU_PROPERTY = 0x6474E553,

    PT_LOPROC = elf.PT_LOPROC,
    PT_HIPROC = elf.PT_HIPROC,

    PT_NUM = elf.PT_NUM,

    PT_UNKNOWN = 0xBADFACED,
};

pub const ProgFlag = enum(u32) {
    PF_X = elf.PF_X,
    PF_W = elf.PF_W,
    PF_R = elf.PF_R,
    PF_MASKOS = elf.PF_MASKOS,
    PF_MASKPROC = elf.PF_MASKPROC,

    PF_UNKNOWN = 0xBADFACED,
};

pub const SectionType = enum(u32) {
    SHT_NULL = elf.SHT_NULL,
    SHT_PROGBITS = elf.SHT_PROGBITS,
    SHT_SYMTAB = elf.SHT_SYMTAB,
    SHT_STRTAB = elf.SHT_STRTAB,
    SHT_RELA = elf.SHT_RELA,
    SHT_HASH = elf.SHT_HASH,
    SHT_DYNAMIC = elf.SHT_DYNAMIC,
    SHT_NOTE = elf.SHT_NOTE,
    SHT_NOBITS = elf.SHT_NOBITS,
    SHT_REL = elf.SHT_REL,
    SHT_SHLIB = elf.SHT_SHLIB,
    SHT_DYNSYM = elf.SHT_DYNSYM,
    SHT_INIT_ARRAY = elf.SHT_INIT_ARRAY,
    SHT_FINI_ARRAY = elf.SHT_FINI_ARRAY,
    SHT_PREINIT_ARRAY = elf.SHT_PREINIT_ARRAY,
    SHT_GROUP = elf.SHT_GROUP,
    SHT_SYMTAB_SHNDX = elf.SHT_SYMTAB_SHNDX,

    SHT_GNU_HASH = elf.SHT_GNU_HASH,
    SHT_GNU_VERDEF = elf.SHT_GNU_VERDEF,
    SHT_GNU_VERNEED = elf.SHT_GNU_VERNEED,
    SHT_GNU_VERSYM = elf.SHT_GNU_VERSYM,
    SHT_GNU_ATTRIBUTES = 0x6FFFFFF5,

    SHT_X86_64_UNWIND = elf.SHT_X86_64_UNWIND,

    SHT_LOOS = elf.SHT_LOOS,

    SHT_LOPROC = elf.SHT_LOPROC,
    SHT_HIPROC = elf.SHT_HIPROC,

    SHT_LOUSER = elf.SHT_LOUSER,
    SHT_HIUSER = elf.SHT_HIUSER,

    SHT_UNKNOWN = 0xBADFACED,
};

pub const SectionFlag = enum(u64) {
    SHF_WRITE = elf.SHF_WRITE,
    SHF_ALLOC = elf.SHF_ALLOC,
    SHF_EXECINSTR = elf.SHF_EXECINSTR,
    SHF_MERGE = elf.SHF_MERGE,
    SHF_STRINGS = elf.SHF_STRINGS,
    SHF_INFO_LINK = elf.SHF_INFO_LINK,
    SHF_LINK_ORDER = elf.SHF_LINK_ORDER,
    SHF_OS_NONCONFORMING = elf.SHF_OS_NONCONFORMING,
    SHF_GROUP = elf.SHF_GROUP,
    SHF_TLS = elf.SHF_TLS,
    SHF_COMPRESSED = elf.SHF_COMPRESSED,
    SHF_EXCLUDE = elf.SHF_EXCLUDE,

    SHF_GNU_RETAIN = elf.SHF_GNU_RETAIN,

    SHF_X86_64_LARGE = elf.SHF_X86_64_LARGE,

    SHF_MASKOS = elf.SHF_MASKOS,
    SHF_MASKPROC = elf.SHF_MASKPROC,

    SHF_UNKNOWN = 0xBADFACED,
};

pub const SymbolType = enum(u8) {
    STT_NOTYPE = elf.STT_NOTYPE,
    STT_OBJECT = elf.STT_OBJECT,
    STT_FUNC = elf.STT_FUNC,
    STT_SECTION = elf.STT_SECTION,
    STT_FILE = elf.STT_FILE,
    STT_COMMON = elf.STT_COMMON,
    STT_TLS = elf.STT_TLS,

    STT_GNU_IFUNC = elf.STT_GNU_IFUNC,

    STT_LOPROC = elf.STT_LOPROC,
    STT_HIPROC = elf.STT_HIPROC,

    STT_NUM = elf.STT_NUM,

    STT_UNKNOWN = 0xFF,
};

pub const SymbolBind = enum(u8) {
    STB_LOCAL = elf.STB_LOCAL,
    STB_GLOBAL = elf.STB_GLOBAL,
    STB_WEAK = elf.STB_WEAK,
    STB_LOOS = elf.STB_LOOS,
    STB_HIOS = elf.STB_HIOS,
    STB_LOPROC = elf.STB_LOPROC,
    STB_HIPROC = elf.STB_HIPROC,

    STB_UNKNOWN = 0xFF,
};

pub const DynTag = enum(u32) {
    DT_NULL = elf.DT_NULL,
    DT_NEEDED = elf.DT_NEEDED,
    DT_PLTRELSZ = elf.DT_PLTRELSZ,
    DT_PLTGOT = elf.DT_PLTGOT,
    DT_HASH = elf.DT_HASH,
    DT_STRTAB = elf.DT_STRTAB,
    DT_SYMTAB = elf.DT_SYMTAB,
    DT_RELA = elf.DT_RELA,
    DT_RELASZ = elf.DT_RELASZ,
    DT_RELAENT = elf.DT_RELAENT,
    DT_RELR = elf.DT_RELR,
    DT_RELRSZ = elf.DT_RELRSZ,
    DT_RELRENT = elf.DT_RELRENT,
    DT_STRSZ = elf.DT_STRSZ,
    DT_SYMENT = elf.DT_SYMENT,
    DT_INIT = elf.DT_INIT,
    DT_FINI = elf.DT_FINI,
    DT_SONAME = elf.DT_SONAME,
    DT_RPATH = elf.DT_RPATH,
    DT_SYMBOLIC = elf.DT_SYMBOLIC,
    DT_REL = elf.DT_REL,
    DT_RELSZ = elf.DT_RELSZ,
    DT_RELENT = elf.DT_RELENT,
    DT_PLTREL = elf.DT_PLTREL,
    DT_DEBUG = elf.DT_DEBUG,
    DT_TEXTREL = elf.DT_TEXTREL,
    DT_JMPREL = elf.DT_JMPREL,
    DT_BIND_NOW = elf.DT_BIND_NOW,
    DT_INIT_ARRAY = elf.DT_INIT_ARRAY,
    DT_FINI_ARRAY = elf.DT_FINI_ARRAY,
    DT_INIT_ARRAYSZ = elf.DT_INIT_ARRAYSZ,
    DT_FINI_ARRAYSZ = elf.DT_FINI_ARRAYSZ,
    DT_RUNPATH = elf.DT_RUNPATH,
    DT_FLAGS = elf.DT_FLAGS,

    DT_PREINIT_ARRAY = elf.DT_PREINIT_ARRAY,
    DT_PREINIT_ARRAYSZ = elf.DT_PREINIT_ARRAYSZ,
    DT_SYMTAB_SHNDX = elf.DT_SYMTAB_SHNDX,

    DT_LOOS = elf.DT_LOOS,
    DT_HIOS = elf.DT_HIOS,

    DT_GNU_HASH = elf.DT_GNU_HASH,
    DT_VERSYM = elf.DT_VERSYM,
    DT_VERDEF = elf.DT_VERDEF,
    DT_VERDEFNUM = elf.DT_VERDEFNUM,
    DT_VERNEED = elf.DT_VERNEED,
    DT_VERNEEDNUM = elf.DT_VERNEEDNUM,
    DT_FLAGS_1 = elf.DT_FLAGS_1,
    DT_RELCOUNT = elf.DT_RELCOUNT,
    DT_RELACOUNT = elf.DT_RELACOUNT,

    DT_VALRNGLO = elf.DT_VALRNGLO,
    DT_VALRNGHI = elf.DT_VALRNGHI,
    DT_ADDRRNGLO = elf.DT_ADDRRNGLO,
    DT_ADDRRNGHI = elf.DT_ADDRRNGHI,

    DT_GNU_PRELINKED = elf.DT_GNU_PRELINKED,
    DT_GNU_CONFLICTSZ = elf.DT_GNU_CONFLICTSZ,
    DT_GNU_LIBLISTSZ = elf.DT_GNU_LIBLISTSZ,
    DT_CHECKSUM = elf.DT_CHECKSUM,
    DT_PLTPADSZ = elf.DT_PLTPADSZ,
    DT_MOVEENT = elf.DT_MOVEENT,
    DT_MOVESZ = elf.DT_MOVESZ,
    DT_POSFLAG_1 = elf.DT_POSFLAG_1,
    DT_SYMINSZ = elf.DT_SYMINSZ,
    DT_TLSDESC_PLT = elf.DT_TLSDESC_PLT,
    DT_TLSDESC_GOT = elf.DT_TLSDESC_GOT,
    DT_GNU_CONFLICT = elf.DT_GNU_CONFLICT,
    DT_GNU_LIBLIST = elf.DT_GNU_LIBLIST,
    DT_CONFIG = elf.DT_CONFIG,
    DT_DEPAUDIT = elf.DT_DEPAUDIT,
    DT_AUDIT = elf.DT_AUDIT,
    DT_PLTPAD = elf.DT_PLTPAD,
    DT_MOVETAB = elf.DT_MOVETAB,

    DT_AUXILIARY = elf.DT_AUXILIARY,
    DT_FILTER = elf.DT_FILTER,

    DT_LOPROC = elf.DT_LOPROC,

    DT_NUM = elf.DT_NUM,

    DT_UNKNOWN = 0xBADFACED,
};

pub const RelocationType = union(enum) {
    @"386": Relocation386,
    S390: Relocation390,
    ARM: RelocationARM,
    PPC: RelocationPPC,
    PPC64: RelocationPPC64,
    MIPS: RelocationMIPS,
    ALPHA: RelocationALPHA,
    AARCH64: RelocationAARCH64,
    LOONGARCH: RelocationLARCH,
    RISCV: RelocationRISCV,
    SPARC: RelocationSPARC,
    X86_64: RelocationX86_64,
};

pub const Relocation386 = enum(u32) {
    R_386_NONE = 0,
    R_386_32 = 1,
    R_386_PC32 = 2,
    R_386_GOT32 = 3,
    R_386_PLT32 = 4,
    R_386_COPY = 5,
    R_386_GLOB_DAT = 6,
    R_386_JMP_SLOT = 7,
    R_386_RELATIVE = 8,
    R_386_GOTOFF = 9,
    R_386_GOTPC = 10,
    R_386_32PLT = 11,
    R_386_TLS_TPOFF = 14,
    R_386_TLS_IE = 15,
    R_386_TLS_GOTIE = 16,
    R_386_TLS_LE = 17,
    R_386_TLS_GD = 18,
    R_386_TLS_LDM = 19,
    R_386_16 = 20,
    R_386_PC16 = 21,
    R_386_8 = 22,
    R_386_PC8 = 23,
    R_386_TLS_GD_32 = 24,
    R_386_TLS_GD_PUSH = 25,
    R_386_TLS_GD_CALL = 26,
    R_386_TLS_GD_POP = 27,
    R_386_TLS_LDM_32 = 28,
    R_386_TLS_LDM_PUSH = 29,
    R_386_TLS_LDM_CALL = 30,
    R_386_TLS_LDM_POP = 31,
    R_386_TLS_LDO_32 = 32,
    R_386_TLS_IE_32 = 33,
    R_386_TLS_LE_32 = 34,
    R_386_TLS_DTPMOD32 = 35,
    R_386_TLS_DTPOFF32 = 36,
    R_386_TLS_TPOFF32 = 37,
    R_386_SIZE32 = 38,
    R_386_TLS_GOTDESC = 39,
    R_386_TLS_DESC_CALL = 40,
    R_386_TLS_DESC = 41,
    R_386_IRELATIVE = 42,
    R_386_GOT32X = 43,

    R_386_UNKNOWN = 0xBADFACED,
};

pub const Relocation390 = enum(u32) {
    R_390_NONE = 0,
    R_390_8 = 1,
    R_390_12 = 2,
    R_390_16 = 3,
    R_390_32 = 4,
    R_390_PC32 = 5,
    R_390_GOT12 = 6,
    R_390_GOT32 = 7,
    R_390_PLT32 = 8,
    R_390_COPY = 9,
    R_390_GLOB_DAT = 10,
    R_390_JMP_SLOT = 11,
    R_390_RELATIVE = 12,
    R_390_GOTOFF = 13,
    R_390_GOTPC = 14,
    R_390_GOT16 = 15,
    R_390_PC16 = 16,
    R_390_PC16DBL = 17,
    R_390_PLT16DBL = 18,
    R_390_PC32DBL = 19,
    R_390_PLT32DBL = 20,
    R_390_GOTPCDBL = 21,
    R_390_64 = 22,
    R_390_PC64 = 23,
    R_390_GOT64 = 24,
    R_390_PLT64 = 25,
    R_390_GOTENT = 26,
    R_390_GOTOFF16 = 27,
    R_390_GOTOFF64 = 28,
    R_390_GOTPLT12 = 29,
    R_390_GOTPLT16 = 30,
    R_390_GOTPLT32 = 31,
    R_390_GOTPLT64 = 32,
    R_390_GOTPLTENT = 33,
    R_390_GOTPLTOFF16 = 34,
    R_390_GOTPLTOFF32 = 35,
    R_390_GOTPLTOFF64 = 36,
    R_390_TLS_LOAD = 37,
    R_390_TLS_GDCALL = 38,
    R_390_TLS_LDCALL = 39,
    R_390_TLS_GD32 = 40,
    R_390_TLS_GD64 = 41,
    R_390_TLS_GOTIE12 = 42,
    R_390_TLS_GOTIE32 = 43,
    R_390_TLS_GOTIE64 = 44,
    R_390_TLS_LDM32 = 45,
    R_390_TLS_LDM64 = 46,
    R_390_TLS_IE32 = 47,
    R_390_TLS_IE64 = 48,
    R_390_TLS_IEENT = 49,
    R_390_TLS_LE32 = 50,
    R_390_TLS_LE64 = 51,
    R_390_TLS_LDO32 = 52,
    R_390_TLS_LDO64 = 53,
    R_390_TLS_DTPMOD = 54,
    R_390_TLS_DTPOFF = 55,
    R_390_TLS_TPOFF = 56,
    R_390_20 = 57,
    R_390_GOT20 = 58,
    R_390_GOTPLT20 = 59,
    R_390_TLS_GOTIE20 = 60,

    R_390_UNKNOWN = 0xBADFACED,
};

pub const RelocationAARCH64 = enum(u32) {
    R_AARCH64_NONE = 0,
    R_AARCH64_P32_ABS32 = 1,
    R_AARCH64_P32_ABS16 = 2,
    R_AARCH64_P32_PREL32 = 3,
    R_AARCH64_P32_PREL16 = 4,
    R_AARCH64_P32_MOVW_UABS_G0 = 5,
    R_AARCH64_P32_MOVW_UABS_G0_NC = 6,
    R_AARCH64_P32_MOVW_UABS_G1 = 7,
    R_AARCH64_P32_MOVW_SABS_G0 = 8,
    R_AARCH64_P32_LD_PREL_LO19 = 9,
    R_AARCH64_P32_ADR_PREL_LO21 = 10,
    R_AARCH64_P32_ADR_PREL_PG_HI21 = 11,
    R_AARCH64_P32_ADD_ABS_LO12_NC = 12,
    R_AARCH64_P32_LDST8_ABS_LO12_NC = 13,
    R_AARCH64_P32_LDST16_ABS_LO12_NC = 14,
    R_AARCH64_P32_LDST32_ABS_LO12_NC = 15,
    R_AARCH64_P32_LDST64_ABS_LO12_NC = 16,
    R_AARCH64_P32_LDST128_ABS_LO12_NC = 17,
    R_AARCH64_P32_TSTBR14 = 18,
    R_AARCH64_P32_CONDBR19 = 19,
    R_AARCH64_P32_JUMP26 = 20,
    R_AARCH64_P32_CALL26 = 21,
    R_AARCH64_P32_GOT_LD_PREL19 = 25,
    R_AARCH64_P32_ADR_GOT_PAGE = 26,
    R_AARCH64_P32_LD32_GOT_LO12_NC = 27,
    R_AARCH64_P32_TLSGD_ADR_PAGE21 = 81,
    R_AARCH64_P32_TLSGD_ADD_LO12_NC = 82,
    R_AARCH64_P32_TLSIE_ADR_GOTTPREL_PAGE21 = 103,
    R_AARCH64_P32_TLSIE_LD32_GOTTPREL_LO12_NC = 104,
    R_AARCH64_P32_TLSIE_LD_GOTTPREL_PREL19 = 105,
    R_AARCH64_P32_TLSLE_MOVW_TPREL_G1 = 106,
    R_AARCH64_P32_TLSLE_MOVW_TPREL_G0 = 107,
    R_AARCH64_P32_TLSLE_MOVW_TPREL_G0_NC = 108,
    R_AARCH64_P32_TLSLE_ADD_TPREL_HI12 = 109,
    R_AARCH64_P32_TLSLE_ADD_TPREL_LO12 = 110,
    R_AARCH64_P32_TLSLE_ADD_TPREL_LO12_NC = 111,
    R_AARCH64_P32_TLSDESC_LD_PREL19 = 122,
    R_AARCH64_P32_TLSDESC_ADR_PREL21 = 123,
    R_AARCH64_P32_TLSDESC_ADR_PAGE21 = 124,
    R_AARCH64_P32_TLSDESC_LD32_LO12_NC = 125,
    R_AARCH64_P32_TLSDESC_ADD_LO12_NC = 126,
    R_AARCH64_P32_TLSDESC_CALL = 127,
    R_AARCH64_P32_COPY = 180,
    R_AARCH64_P32_GLOB_DAT = 181,
    R_AARCH64_P32_JUMP_SLOT = 182,
    R_AARCH64_P32_RELATIVE = 183,
    R_AARCH64_P32_TLS_DTPMOD = 184,
    R_AARCH64_P32_TLS_DTPREL = 185,
    R_AARCH64_P32_TLS_TPREL = 186,
    R_AARCH64_P32_TLSDESC = 187,
    R_AARCH64_P32_IRELATIVE = 188,
    R_AARCH64_NULL = 256,
    R_AARCH64_ABS64 = 257,
    R_AARCH64_ABS32 = 258,
    R_AARCH64_ABS16 = 259,
    R_AARCH64_PREL64 = 260,
    R_AARCH64_PREL32 = 261,
    R_AARCH64_PREL16 = 262,
    R_AARCH64_MOVW_UABS_G0 = 263,
    R_AARCH64_MOVW_UABS_G0_NC = 264,
    R_AARCH64_MOVW_UABS_G1 = 265,
    R_AARCH64_MOVW_UABS_G1_NC = 266,
    R_AARCH64_MOVW_UABS_G2 = 267,
    R_AARCH64_MOVW_UABS_G2_NC = 268,
    R_AARCH64_MOVW_UABS_G3 = 269,
    R_AARCH64_MOVW_SABS_G0 = 270,
    R_AARCH64_MOVW_SABS_G1 = 271,
    R_AARCH64_MOVW_SABS_G2 = 272,
    R_AARCH64_LD_PREL_LO19 = 273,
    R_AARCH64_ADR_PREL_LO21 = 274,
    R_AARCH64_ADR_PREL_PG_HI21 = 275,
    R_AARCH64_ADR_PREL_PG_HI21_NC = 276,
    R_AARCH64_ADD_ABS_LO12_NC = 277,
    R_AARCH64_LDST8_ABS_LO12_NC = 278,
    R_AARCH64_TSTBR14 = 279,
    R_AARCH64_CONDBR19 = 280,
    R_AARCH64_JUMP26 = 282,
    R_AARCH64_CALL26 = 283,
    R_AARCH64_LDST16_ABS_LO12_NC = 284,
    R_AARCH64_LDST32_ABS_LO12_NC = 285,
    R_AARCH64_LDST64_ABS_LO12_NC = 286,
    R_AARCH64_LDST128_ABS_LO12_NC = 299,
    R_AARCH64_GOT_LD_PREL19 = 309,
    R_AARCH64_LD64_GOTOFF_LO15 = 310,
    R_AARCH64_ADR_GOT_PAGE = 311,
    R_AARCH64_LD64_GOT_LO12_NC = 312,
    R_AARCH64_LD64_GOTPAGE_LO15 = 313,
    R_AARCH64_TLSGD_ADR_PREL21 = 512,
    R_AARCH64_TLSGD_ADR_PAGE21 = 513,
    R_AARCH64_TLSGD_ADD_LO12_NC = 514,
    R_AARCH64_TLSGD_MOVW_G1 = 515,
    R_AARCH64_TLSGD_MOVW_G0_NC = 516,
    R_AARCH64_TLSLD_ADR_PREL21 = 517,
    R_AARCH64_TLSLD_ADR_PAGE21 = 518,
    R_AARCH64_TLSIE_MOVW_GOTTPREL_G1 = 539,
    R_AARCH64_TLSIE_MOVW_GOTTPREL_G0_NC = 540,
    R_AARCH64_TLSIE_ADR_GOTTPREL_PAGE21 = 541,
    R_AARCH64_TLSIE_LD64_GOTTPREL_LO12_NC = 542,
    R_AARCH64_TLSIE_LD_GOTTPREL_PREL19 = 543,
    R_AARCH64_TLSLE_MOVW_TPREL_G2 = 544,
    R_AARCH64_TLSLE_MOVW_TPREL_G1 = 545,
    R_AARCH64_TLSLE_MOVW_TPREL_G1_NC = 546,
    R_AARCH64_TLSLE_MOVW_TPREL_G0 = 547,
    R_AARCH64_TLSLE_MOVW_TPREL_G0_NC = 548,
    R_AARCH64_TLSLE_ADD_TPREL_HI12 = 549,
    R_AARCH64_TLSLE_ADD_TPREL_LO12 = 550,
    R_AARCH64_TLSLE_ADD_TPREL_LO12_NC = 551,
    R_AARCH64_TLSDESC_LD_PREL19 = 560,
    R_AARCH64_TLSDESC_ADR_PREL21 = 561,
    R_AARCH64_TLSDESC_ADR_PAGE21 = 562,
    R_AARCH64_TLSDESC_LD64_LO12_NC = 563,
    R_AARCH64_TLSDESC_ADD_LO12_NC = 564,
    R_AARCH64_TLSDESC_OFF_G1 = 565,
    R_AARCH64_TLSDESC_OFF_G0_NC = 566,
    R_AARCH64_TLSDESC_LDR = 567,
    R_AARCH64_TLSDESC_ADD = 568,
    R_AARCH64_TLSDESC_CALL = 569,
    R_AARCH64_TLSLE_LDST128_TPREL_LO12 = 570,
    R_AARCH64_TLSLE_LDST128_TPREL_LO12_NC = 571,
    R_AARCH64_TLSLD_LDST128_DTPREL_LO12 = 572,
    R_AARCH64_TLSLD_LDST128_DTPREL_LO12_NC = 573,
    R_AARCH64_COPY = 1024,
    R_AARCH64_GLOB_DAT = 1025,
    R_AARCH64_JUMP_SLOT = 1026,
    R_AARCH64_RELATIVE = 1027,
    R_AARCH64_TLS_DTPMOD64 = 1028,
    R_AARCH64_TLS_DTPREL64 = 1029,
    R_AARCH64_TLS_TPREL64 = 1030,
    R_AARCH64_TLSDESC = 1031,
    R_AARCH64_IRELATIVE = 1032,

    R_AARCH64_UNKNOWN = 0xBADFACED,
};

pub const RelocationALPHA = enum(u32) {
    R_ALPHA_NONE = 0,
    R_ALPHA_REFLONG = 1,
    R_ALPHA_REFQUAD = 2,
    R_ALPHA_GPREL32 = 3,
    R_ALPHA_LITERAL = 4,
    R_ALPHA_LITUSE = 5,
    R_ALPHA_GPDISP = 6,
    R_ALPHA_BRADDR = 7,
    R_ALPHA_HINT = 8,
    R_ALPHA_SREL16 = 9,
    R_ALPHA_SREL32 = 10,
    R_ALPHA_SREL64 = 11,
    R_ALPHA_OP_PUSH = 12,
    R_ALPHA_OP_STORE = 13,
    R_ALPHA_OP_PSUB = 14,
    R_ALPHA_OP_PRSHIFT = 15,
    R_ALPHA_GPVALUE = 16,
    R_ALPHA_GPRELHIGH = 17,
    R_ALPHA_GPRELLOW = 18,
    R_ALPHA_IMMED_GP_16 = 19,
    R_ALPHA_IMMED_GP_HI32 = 20,
    R_ALPHA_IMMED_SCN_HI32 = 21,
    R_ALPHA_IMMED_BR_HI32 = 22,
    R_ALPHA_IMMED_LO32 = 23,
    R_ALPHA_COPY = 24,
    R_ALPHA_GLOB_DAT = 25,
    R_ALPHA_JMP_SLOT = 26,
    R_ALPHA_RELATIVE = 27,

    R_ALPHA_UNKNOWN = 0xBADFACED,
};

pub const RelocationARM = enum(u32) {
    R_ARM_NONE = 0,
    R_ARM_PC24 = 1,
    R_ARM_ABS32 = 2,
    R_ARM_REL32 = 3,
    R_ARM_PC13 = 4,
    R_ARM_ABS16 = 5,
    R_ARM_ABS12 = 6,
    R_ARM_THM_ABS5 = 7,
    R_ARM_ABS8 = 8,
    R_ARM_SBREL32 = 9,
    R_ARM_THM_PC22 = 10,
    R_ARM_THM_PC8 = 11,
    R_ARM_AMP_VCALL9 = 12,
    R_ARM_SWI24 = 13,
    R_ARM_THM_SWI8 = 14,
    R_ARM_XPC25 = 15,
    R_ARM_THM_XPC22 = 16,
    R_ARM_TLS_DTPMOD32 = 17,
    R_ARM_TLS_DTPOFF32 = 18,
    R_ARM_TLS_TPOFF32 = 19,
    R_ARM_COPY = 20,
    R_ARM_GLOB_DAT = 21,
    R_ARM_JUMP_SLOT = 22,
    R_ARM_RELATIVE = 23,
    R_ARM_GOTOFF = 24,
    R_ARM_GOTPC = 25,
    R_ARM_GOT32 = 26,
    R_ARM_PLT32 = 27,
    R_ARM_CALL = 28,
    R_ARM_JUMP24 = 29,
    R_ARM_THM_JUMP24 = 30,
    R_ARM_BASE_ABS = 31,
    R_ARM_ALU_PCREL_7_0 = 32,
    R_ARM_ALU_PCREL_15_8 = 33,
    R_ARM_ALU_PCREL_23_15 = 34,
    R_ARM_LDR_SBREL_11_10_NC = 35,
    R_ARM_ALU_SBREL_19_12_NC = 36,
    R_ARM_ALU_SBREL_27_20_CK = 37,
    R_ARM_TARGET1 = 38,
    R_ARM_SBREL31 = 39,
    R_ARM_V4BX = 40,
    R_ARM_TARGET2 = 41,
    R_ARM_PREL31 = 42,
    R_ARM_MOVW_ABS_NC = 43,
    R_ARM_MOVT_ABS = 44,
    R_ARM_MOVW_PREL_NC = 45,
    R_ARM_MOVT_PREL = 46,
    R_ARM_THM_MOVW_ABS_NC = 47,
    R_ARM_THM_MOVT_ABS = 48,
    R_ARM_THM_MOVW_PREL_NC = 49,
    R_ARM_THM_MOVT_PREL = 50,
    R_ARM_THM_JUMP19 = 51,
    R_ARM_THM_JUMP6 = 52,
    R_ARM_THM_ALU_PREL_11_0 = 53,
    R_ARM_THM_PC12 = 54,
    R_ARM_ABS32_NOI = 55,
    R_ARM_REL32_NOI = 56,
    R_ARM_ALU_PC_G0_NC = 57,
    R_ARM_ALU_PC_G0 = 58,
    R_ARM_ALU_PC_G1_NC = 59,
    R_ARM_ALU_PC_G1 = 60,
    R_ARM_ALU_PC_G2 = 61,
    R_ARM_LDR_PC_G1 = 62,
    R_ARM_LDR_PC_G2 = 63,
    R_ARM_LDRS_PC_G0 = 64,
    R_ARM_LDRS_PC_G1 = 65,
    R_ARM_LDRS_PC_G2 = 66,
    R_ARM_LDC_PC_G0 = 67,
    R_ARM_LDC_PC_G1 = 68,
    R_ARM_LDC_PC_G2 = 69,
    R_ARM_ALU_SB_G0_NC = 70,
    R_ARM_ALU_SB_G0 = 71,
    R_ARM_ALU_SB_G1_NC = 72,
    R_ARM_ALU_SB_G1 = 73,
    R_ARM_ALU_SB_G2 = 74,
    R_ARM_LDR_SB_G0 = 75,
    R_ARM_LDR_SB_G1 = 76,
    R_ARM_LDR_SB_G2 = 77,
    R_ARM_LDRS_SB_G0 = 78,
    R_ARM_LDRS_SB_G1 = 79,
    R_ARM_LDRS_SB_G2 = 80,
    R_ARM_LDC_SB_G0 = 81,
    R_ARM_LDC_SB_G1 = 82,
    R_ARM_LDC_SB_G2 = 83,
    R_ARM_MOVW_BREL_NC = 84,
    R_ARM_MOVT_BREL = 85,
    R_ARM_MOVW_BREL = 86,
    R_ARM_THM_MOVW_BREL_NC = 87,
    R_ARM_THM_MOVT_BREL = 88,
    R_ARM_THM_MOVW_BREL = 89,
    R_ARM_TLS_GOTDESC = 90,
    R_ARM_TLS_CALL = 91,
    R_ARM_TLS_DESCSEQ = 92,
    R_ARM_THM_TLS_CALL = 93,
    R_ARM_PLT32_ABS = 94,
    R_ARM_GOT_ABS = 95,
    R_ARM_GOT_PREL = 96,
    R_ARM_GOT_BREL12 = 97,
    R_ARM_GOTOFF12 = 98,
    R_ARM_GOTRELAX = 99,
    R_ARM_GNU_VTENTRY = 100,
    R_ARM_GNU_VTINHERIT = 101,
    R_ARM_THM_JUMP11 = 102,
    R_ARM_THM_JUMP8 = 103,
    R_ARM_TLS_GD32 = 104,
    R_ARM_TLS_LDM32 = 105,
    R_ARM_TLS_LDO32 = 106,
    R_ARM_TLS_IE32 = 107,
    R_ARM_TLS_LE32 = 108,
    R_ARM_TLS_LDO12 = 109,
    R_ARM_TLS_LE12 = 110,
    R_ARM_TLS_IE12GP = 111,
    R_ARM_PRIVATE_0 = 112,
    R_ARM_PRIVATE_1 = 113,
    R_ARM_PRIVATE_2 = 114,
    R_ARM_PRIVATE_3 = 115,
    R_ARM_PRIVATE_4 = 116,
    R_ARM_PRIVATE_5 = 117,
    R_ARM_PRIVATE_6 = 118,
    R_ARM_PRIVATE_7 = 119,
    R_ARM_PRIVATE_8 = 120,
    R_ARM_PRIVATE_9 = 121,
    R_ARM_PRIVATE_10 = 122,
    R_ARM_PRIVATE_11 = 123,
    R_ARM_PRIVATE_12 = 124,
    R_ARM_PRIVATE_13 = 125,
    R_ARM_PRIVATE_14 = 126,
    R_ARM_PRIVATE_15 = 127,
    R_ARM_ME_TOO = 128,
    R_ARM_THM_TLS_DESCSEQ16 = 129,
    R_ARM_THM_TLS_DESCSEQ32 = 130,
    R_ARM_THM_GOT_BREL12 = 131,
    R_ARM_THM_ALU_ABS_G0_NC = 132,
    R_ARM_THM_ALU_ABS_G1_NC = 133,
    R_ARM_THM_ALU_ABS_G2_NC = 134,
    R_ARM_THM_ALU_ABS_G3 = 135,
    R_ARM_IRELATIVE = 160,
    R_ARM_RXPC25 = 249,
    R_ARM_RSBREL32 = 250,
    R_ARM_THM_RPC22 = 251,
    R_ARM_RREL32 = 252,
    R_ARM_RABS32 = 253,
    R_ARM_RPC24 = 254,
    R_ARM_RBASE = 255,

    R_ARM_UNKNOWN = 0xBADFACED,
};

pub const RelocationLARCH = enum(u32) {
    R_LARCH_NONE = 0,
    R_LARCH_32 = 1,
    R_LARCH_64 = 2,
    R_LARCH_RELATIVE = 3,
    R_LARCH_COPY = 4,
    R_LARCH_JUMP_SLOT = 5,
    R_LARCH_TLS_DTPMOD32 = 6,
    R_LARCH_TLS_DTPMOD64 = 7,
    R_LARCH_TLS_DTPREL32 = 8,
    R_LARCH_TLS_DTPREL64 = 9,
    R_LARCH_TLS_TPREL32 = 10,
    R_LARCH_TLS_TPREL64 = 11,
    R_LARCH_IRELATIVE = 12,
    R_LARCH_MARK_LA = 20,
    R_LARCH_MARK_PCREL = 21,
    R_LARCH_SOP_PUSH_PCREL = 22,
    R_LARCH_SOP_PUSH_ABSOLUTE = 23,
    R_LARCH_SOP_PUSH_DUP = 24,
    R_LARCH_SOP_PUSH_GPREL = 25,
    R_LARCH_SOP_PUSH_TLS_TPREL = 26,
    R_LARCH_SOP_PUSH_TLS_GOT = 27,
    R_LARCH_SOP_PUSH_TLS_GD = 28,
    R_LARCH_SOP_PUSH_PLT_PCREL = 29,
    R_LARCH_SOP_ASSERT = 30,
    R_LARCH_SOP_NOT = 31,
    R_LARCH_SOP_SUB = 32,
    R_LARCH_SOP_SL = 33,
    R_LARCH_SOP_SR = 34,
    R_LARCH_SOP_ADD = 35,
    R_LARCH_SOP_AND = 36,
    R_LARCH_SOP_IF_ELSE = 37,
    R_LARCH_SOP_POP_32_S_10_5 = 38,
    R_LARCH_SOP_POP_32_U_10_12 = 39,
    R_LARCH_SOP_POP_32_S_10_12 = 40,
    R_LARCH_SOP_POP_32_S_10_16 = 41,
    R_LARCH_SOP_POP_32_S_10_16_S2 = 42,
    R_LARCH_SOP_POP_32_S_5_20 = 43,
    R_LARCH_SOP_POP_32_S_0_5_10_16_S2 = 44,
    R_LARCH_SOP_POP_32_S_0_10_10_16_S2 = 45,
    R_LARCH_SOP_POP_32_U = 46,
    R_LARCH_ADD8 = 47,
    R_LARCH_ADD16 = 48,
    R_LARCH_ADD24 = 49,
    R_LARCH_ADD32 = 50,
    R_LARCH_ADD64 = 51,
    R_LARCH_SUB8 = 52,
    R_LARCH_SUB16 = 53,
    R_LARCH_SUB24 = 54,
    R_LARCH_SUB32 = 55,
    R_LARCH_SUB64 = 56,
    R_LARCH_GNU_VTINHERIT = 57,
    R_LARCH_GNU_VTENTRY = 58,
    R_LARCH_B16 = 64,
    R_LARCH_B21 = 65,
    R_LARCH_B26 = 66,
    R_LARCH_ABS_HI20 = 67,
    R_LARCH_ABS_LO12 = 68,
    R_LARCH_ABS64_LO20 = 69,
    R_LARCH_ABS64_HI12 = 70,
    R_LARCH_PCALA_HI20 = 71,
    R_LARCH_PCALA_LO12 = 72,
    R_LARCH_PCALA64_LO20 = 73,
    R_LARCH_PCALA64_HI12 = 74,
    R_LARCH_GOT_PC_HI20 = 75,
    R_LARCH_GOT_PC_LO12 = 76,
    R_LARCH_GOT64_PC_LO20 = 77,
    R_LARCH_GOT64_PC_HI12 = 78,
    R_LARCH_GOT_HI20 = 79,
    R_LARCH_GOT_LO12 = 80,
    R_LARCH_GOT64_LO20 = 81,
    R_LARCH_GOT64_HI12 = 82,
    R_LARCH_TLS_LE_HI20 = 83,
    R_LARCH_TLS_LE_LO12 = 84,
    R_LARCH_TLS_LE64_LO20 = 85,
    R_LARCH_TLS_LE64_HI12 = 86,
    R_LARCH_TLS_IE_PC_HI20 = 87,
    R_LARCH_TLS_IE_PC_LO12 = 88,
    R_LARCH_TLS_IE64_PC_LO20 = 89,
    R_LARCH_TLS_IE64_PC_HI12 = 90,
    R_LARCH_TLS_IE_HI20 = 91,
    R_LARCH_TLS_IE_LO12 = 92,
    R_LARCH_TLS_IE64_LO20 = 93,
    R_LARCH_TLS_IE64_HI12 = 94,
    R_LARCH_TLS_LD_PC_HI20 = 95,
    R_LARCH_TLS_LD_HI20 = 96,
    R_LARCH_TLS_GD_PC_HI20 = 97,
    R_LARCH_TLS_GD_HI20 = 98,
    R_LARCH_32_PCREL = 99,
    R_LARCH_RELAX = 100,
    R_LARCH_DELETE = 101,
    R_LARCH_ALIGN = 102,
    R_LARCH_PCREL20_S2 = 103,
    R_LARCH_CFA = 104,
    R_LARCH_ADD6 = 105,
    R_LARCH_SUB6 = 106,
    R_LARCH_ADD_ULEB128 = 107,
    R_LARCH_SUB_ULEB128 = 108,
    R_LARCH_64_PCREL = 109,

    R_LARCH_UNKNOWN = 0xBADFACED,
};

pub const RelocationMIPS = enum(u32) {
    R_MIPS_NONE = 0,
    R_MIPS_16 = 1,
    R_MIPS_32 = 2,
    R_MIPS_REL32 = 3,
    R_MIPS_26 = 4,
    R_MIPS_HI16 = 5,
    R_MIPS_LO16 = 6,
    R_MIPS_GPREL16 = 7,
    R_MIPS_LITERAL = 8,
    R_MIPS_GOT16 = 9,
    R_MIPS_PC16 = 10,
    R_MIPS_CALL16 = 11,
    R_MIPS_GPREL32 = 12,
    R_MIPS_SHIFT5 = 16,
    R_MIPS_SHIFT6 = 17,
    R_MIPS_64 = 18,
    R_MIPS_GOT_DISP = 19,
    R_MIPS_GOT_PAGE = 20,
    R_MIPS_GOT_OFST = 21,
    R_MIPS_GOT_HI16 = 22,
    R_MIPS_GOT_LO16 = 23,
    R_MIPS_SUB = 24,
    R_MIPS_INSERT_A = 25,
    R_MIPS_INSERT_B = 26,
    R_MIPS_DELETE = 27,
    R_MIPS_HIGHER = 28,
    R_MIPS_HIGHEST = 29,
    R_MIPS_CALL_HI16 = 30,
    R_MIPS_CALL_LO16 = 31,
    R_MIPS_SCN_DISP = 32,
    R_MIPS_REL16 = 33,
    R_MIPS_ADD_IMMEDIATE = 34,
    R_MIPS_PJUMP = 35,
    R_MIPS_RELGOT = 36,
    R_MIPS_JALR = 37,
    R_MIPS_TLS_DTPMOD32 = 38,
    R_MIPS_TLS_DTPREL32 = 39,
    R_MIPS_TLS_DTPMOD64 = 40,
    R_MIPS_TLS_DTPREL64 = 41,
    R_MIPS_TLS_GD = 42,
    R_MIPS_TLS_LDM = 43,
    R_MIPS_TLS_DTPREL_HI16 = 44,
    R_MIPS_TLS_DTPREL_LO16 = 45,
    R_MIPS_TLS_GOTTPREL = 46,
    R_MIPS_TLS_TPREL32 = 47,
    R_MIPS_TLS_TPREL64 = 48,
    R_MIPS_TLS_TPREL_HI16 = 49,
    R_MIPS_TLS_TPREL_LO16 = 50,
    R_MIPS_PC32 = 248,

    R_MIPS_UNKNOWN = 0xBADFACED,
};

pub const RelocationPPC = enum(u32) {
    R_PPC_NONE = 0,
    R_PPC_ADDR32 = 1,
    R_PPC_ADDR24 = 2,
    R_PPC_ADDR16 = 3,
    R_PPC_ADDR16_LO = 4,
    R_PPC_ADDR16_HI = 5,
    R_PPC_ADDR16_HA = 6,
    R_PPC_ADDR14 = 7,
    R_PPC_ADDR14_BRTAKEN = 8,
    R_PPC_ADDR14_BRNTAKEN = 9,
    R_PPC_REL24 = 10,
    R_PPC_REL14 = 11,
    R_PPC_REL14_BRTAKEN = 12,
    R_PPC_REL14_BRNTAKEN = 13,
    R_PPC_GOT16 = 14,
    R_PPC_GOT16_LO = 15,
    R_PPC_GOT16_HI = 16,
    R_PPC_GOT16_HA = 17,
    R_PPC_PLTREL24 = 18,
    R_PPC_COPY = 19,
    R_PPC_GLOB_DAT = 20,
    R_PPC_JMP_SLOT = 21,
    R_PPC_RELATIVE = 22,
    R_PPC_LOCAL24PC = 23,
    R_PPC_UADDR32 = 24,
    R_PPC_UADDR16 = 25,
    R_PPC_REL32 = 26,
    R_PPC_PLT32 = 27,
    R_PPC_PLTREL32 = 28,
    R_PPC_PLT16_LO = 29,
    R_PPC_PLT16_HI = 30,
    R_PPC_PLT16_HA = 31,
    R_PPC_SDAREL16 = 32,
    R_PPC_SECTOFF = 33,
    R_PPC_SECTOFF_LO = 34,
    R_PPC_SECTOFF_HI = 35,
    R_PPC_SECTOFF_HA = 36,
    R_PPC_TLS = 67,
    R_PPC_DTPMOD32 = 68,
    R_PPC_TPREL16 = 69,
    R_PPC_TPREL16_LO = 70,
    R_PPC_TPREL16_HI = 71,
    R_PPC_TPREL16_HA = 72,
    R_PPC_TPREL32 = 73,
    R_PPC_DTPREL16 = 74,
    R_PPC_DTPREL16_LO = 75,
    R_PPC_DTPREL16_HI = 76,
    R_PPC_DTPREL16_HA = 77,
    R_PPC_DTPREL32 = 78,
    R_PPC_GOT_TLSGD16 = 79,
    R_PPC_GOT_TLSGD16_LO = 80,
    R_PPC_GOT_TLSGD16_HI = 81,
    R_PPC_GOT_TLSGD16_HA = 82,
    R_PPC_GOT_TLSLD16 = 83,
    R_PPC_GOT_TLSLD16_LO = 84,
    R_PPC_GOT_TLSLD16_HI = 85,
    R_PPC_GOT_TLSLD16_HA = 86,
    R_PPC_GOT_TPREL16 = 87,
    R_PPC_GOT_TPREL16_LO = 88,
    R_PPC_GOT_TPREL16_HI = 89,
    R_PPC_GOT_TPREL16_HA = 90,
    R_PPC_EMB_NADDR32 = 101,
    R_PPC_EMB_NADDR16 = 102,
    R_PPC_EMB_NADDR16_LO = 103,
    R_PPC_EMB_NADDR16_HI = 104,
    R_PPC_EMB_NADDR16_HA = 105,
    R_PPC_EMB_SDAI16 = 106,
    R_PPC_EMB_SDA2I16 = 107,
    R_PPC_EMB_SDA2REL = 108,
    R_PPC_EMB_SDA21 = 109,
    R_PPC_EMB_MRKREF = 110,
    R_PPC_EMB_RELSEC16 = 111,
    R_PPC_EMB_RELST_LO = 112,
    R_PPC_EMB_RELST_HI = 113,
    R_PPC_EMB_RELST_HA = 114,
    R_PPC_EMB_BIT_FLD = 115,
    R_PPC_EMB_RELSDA = 116,

    R_PPC_UNKNOWN = 0xBADFACED,
};

pub const RelocationPPC64 = enum(u32) {
    R_PPC64_NONE = 0,
    R_PPC64_ADDR32 = 1,
    R_PPC64_ADDR24 = 2,
    R_PPC64_ADDR16 = 3,
    R_PPC64_ADDR16_LO = 4,
    R_PPC64_ADDR16_HI = 5,
    R_PPC64_ADDR16_HA = 6,
    R_PPC64_ADDR14 = 7,
    R_PPC64_ADDR14_BRTAKEN = 8,
    R_PPC64_ADDR14_BRNTAKEN = 9,
    R_PPC64_REL24 = 10,
    R_PPC64_REL14 = 11,
    R_PPC64_REL14_BRTAKEN = 12,
    R_PPC64_REL14_BRNTAKEN = 13,
    R_PPC64_GOT16 = 14,
    R_PPC64_GOT16_LO = 15,
    R_PPC64_GOT16_HI = 16,
    R_PPC64_GOT16_HA = 17,
    R_PPC64_COPY = 19,
    R_PPC64_GLOB_DAT = 20,
    R_PPC64_JMP_SLOT = 21,
    R_PPC64_RELATIVE = 22,
    R_PPC64_UADDR32 = 24,
    R_PPC64_UADDR16 = 25,
    R_PPC64_REL32 = 26,
    R_PPC64_PLT32 = 27,
    R_PPC64_PLTREL32 = 28,
    R_PPC64_PLT16_LO = 29,
    R_PPC64_PLT16_HI = 30,
    R_PPC64_PLT16_HA = 31,
    R_PPC64_SECTOFF = 33,
    R_PPC64_SECTOFF_LO = 34,
    R_PPC64_SECTOFF_HI = 35,
    R_PPC64_SECTOFF_HA = 36,
    R_PPC64_REL30 = 37,
    R_PPC64_ADDR64 = 38,
    R_PPC64_ADDR16_HIGHER = 39,
    R_PPC64_ADDR16_HIGHERA = 40,
    R_PPC64_ADDR16_HIGHEST = 41,
    R_PPC64_ADDR16_HIGHESTA = 42,
    R_PPC64_UADDR64 = 43,
    R_PPC64_REL64 = 44,
    R_PPC64_PLT64 = 45,
    R_PPC64_PLTREL64 = 46,
    R_PPC64_TOC16 = 47,
    R_PPC64_TOC16_LO = 48,
    R_PPC64_TOC16_HI = 49,
    R_PPC64_TOC16_HA = 50,
    R_PPC64_TOC = 51,
    R_PPC64_PLTGOT16 = 52,
    R_PPC64_PLTGOT16_LO = 53,
    R_PPC64_PLTGOT16_HI = 54,
    R_PPC64_PLTGOT16_HA = 55,
    R_PPC64_ADDR16_DS = 56,
    R_PPC64_ADDR16_LO_DS = 57,
    R_PPC64_GOT16_DS = 58,
    R_PPC64_GOT16_LO_DS = 59,
    R_PPC64_PLT16_LO_DS = 60,
    R_PPC64_SECTOFF_DS = 61,
    R_PPC64_SECTOFF_LO_DS = 62,
    R_PPC64_TOC16_DS = 63,
    R_PPC64_TOC16_LO_DS = 64,
    R_PPC64_PLTGOT16_DS = 65,
    R_PPC64_PLTGOT_LO_DS = 66,
    R_PPC64_TLS = 67,
    R_PPC64_DTPMOD64 = 68,
    R_PPC64_TPREL16 = 69,
    R_PPC64_TPREL16_LO = 70,
    R_PPC64_TPREL16_HI = 71,
    R_PPC64_TPREL16_HA = 72,
    R_PPC64_TPREL64 = 73,
    R_PPC64_DTPREL16 = 74,
    R_PPC64_DTPREL16_LO = 75,
    R_PPC64_DTPREL16_HI = 76,
    R_PPC64_DTPREL16_HA = 77,
    R_PPC64_DTPREL64 = 78,
    R_PPC64_GOT_TLSGD16 = 79,
    R_PPC64_GOT_TLSGD16_LO = 80,
    R_PPC64_GOT_TLSGD16_HI = 81,
    R_PPC64_GOT_TLSGD16_HA = 82,
    R_PPC64_GOT_TLSLD16 = 83,
    R_PPC64_GOT_TLSLD16_LO = 84,
    R_PPC64_GOT_TLSLD16_HI = 85,
    R_PPC64_GOT_TLSLD16_HA = 86,
    R_PPC64_GOT_TPREL16_DS = 87,
    R_PPC64_GOT_TPREL16_LO_DS = 88,
    R_PPC64_GOT_TPREL16_HI = 89,
    R_PPC64_GOT_TPREL16_HA = 90,
    R_PPC64_GOT_DTPREL16_DS = 91,
    R_PPC64_GOT_DTPREL16_LO_DS = 92,
    R_PPC64_GOT_DTPREL16_HI = 93,
    R_PPC64_GOT_DTPREL16_HA = 94,
    R_PPC64_TPREL16_DS = 95,
    R_PPC64_TPREL16_LO_DS = 96,
    R_PPC64_TPREL16_HIGHER = 97,
    R_PPC64_TPREL16_HIGHERA = 98,
    R_PPC64_TPREL16_HIGHEST = 99,
    R_PPC64_TPREL16_HIGHESTA = 100,
    R_PPC64_DTPREL16_DS = 101,
    R_PPC64_DTPREL16_LO_DS = 102,
    R_PPC64_DTPREL16_HIGHER = 103,
    R_PPC64_DTPREL16_HIGHERA = 104,
    R_PPC64_DTPREL16_HIGHEST = 105,
    R_PPC64_DTPREL16_HIGHESTA = 106,
    R_PPC64_TLSGD = 107,
    R_PPC64_TLSLD = 108,
    R_PPC64_TOCSAVE = 109,
    R_PPC64_ADDR16_HIGH = 110,
    R_PPC64_ADDR16_HIGHA = 111,
    R_PPC64_TPREL16_HIGH = 112,
    R_PPC64_TPREL16_HIGHA = 113,
    R_PPC64_DTPREL16_HIGH = 114,
    R_PPC64_DTPREL16_HIGHA = 115,
    R_PPC64_REL24_NOTOC = 116,
    R_PPC64_ADDR64_LOCAL = 117,
    R_PPC64_ENTRY = 118,
    R_PPC64_PLTSEQ = 119,
    R_PPC64_PLTCALL = 120,
    R_PPC64_PLTSEQ_NOTOC = 121,
    R_PPC64_PLTCALL_NOTOC = 122,
    R_PPC64_PCREL_OPT = 123,
    R_PPC64_REL24_P9NOTOC = 124,
    R_PPC64_D34 = 128,
    R_PPC64_D34_LO = 129,
    R_PPC64_D34_HI30 = 130,
    R_PPC64_D34_HA30 = 131,
    R_PPC64_PCREL34 = 132,
    R_PPC64_GOT_PCREL34 = 133,
    R_PPC64_PLT_PCREL34 = 134,
    R_PPC64_PLT_PCREL34_NOTOC = 135,
    R_PPC64_ADDR16_HIGHER34 = 136,
    R_PPC64_ADDR16_HIGHERA34 = 137,
    R_PPC64_ADDR16_HIGHEST34 = 138,
    R_PPC64_ADDR16_HIGHESTA34 = 139,
    R_PPC64_REL16_HIGHER34 = 140,
    R_PPC64_REL16_HIGHERA34 = 141,
    R_PPC64_REL16_HIGHEST34 = 142,
    R_PPC64_REL16_HIGHESTA34 = 143,
    R_PPC64_D28 = 144,
    R_PPC64_PCREL28 = 145,
    R_PPC64_TPREL34 = 146,
    R_PPC64_DTPREL34 = 147,
    R_PPC64_GOT_TLSGD_PCREL34 = 148,
    R_PPC64_GOT_TLSLD_PCREL34 = 149,
    R_PPC64_GOT_TPREL_PCREL34 = 150,
    R_PPC64_GOT_DTPREL_PCREL34 = 151,
    R_PPC64_REL16_HIGH = 240,
    R_PPC64_REL16_HIGHA = 241,
    R_PPC64_REL16_HIGHER = 242,
    R_PPC64_REL16_HIGHERA = 243,
    R_PPC64_REL16_HIGHEST = 244,
    R_PPC64_REL16_HIGHESTA = 245,
    R_PPC64_REL16DX_HA = 246,
    R_PPC64_JMP_IREL = 247,
    R_PPC64_IRELATIVE = 248,
    R_PPC64_REL16 = 249,
    R_PPC64_REL16_LO = 250,
    R_PPC64_REL16_HI = 251,
    R_PPC64_REL16_HA = 252,
    R_PPC64_GNU_VTINHERIT = 253,
    R_PPC64_GNU_VTENTRY = 254,

    R_PPC64_UNKNOWN = 0xBADFACED,
};

pub const RelocationRISCV = enum(u32) {
    R_RISCV_NONE = 0,
    R_RISCV_32 = 1,
    R_RISCV_64 = 2,
    R_RISCV_RELATIVE = 3,
    R_RISCV_COPY = 4,
    R_RISCV_JUMP_SLOT = 5,
    R_RISCV_TLS_DTPMOD32 = 6,
    R_RISCV_TLS_DTPMOD64 = 7,
    R_RISCV_TLS_DTPREL32 = 8,
    R_RISCV_TLS_DTPREL64 = 9,
    R_RISCV_TLS_TPREL32 = 10,
    R_RISCV_TLS_TPREL64 = 11,
    R_RISCV_BRANCH = 16,
    R_RISCV_JAL = 17,
    R_RISCV_CALL = 18,
    R_RISCV_CALL_PLT = 19,
    R_RISCV_GOT_HI20 = 20,
    R_RISCV_TLS_GOT_HI20 = 21,
    R_RISCV_TLS_GD_HI20 = 22,
    R_RISCV_PCREL_HI20 = 23,
    R_RISCV_PCREL_LO12_I = 24,
    R_RISCV_PCREL_LO12_S = 25,
    R_RISCV_HI20 = 26,
    R_RISCV_LO12_I = 27,
    R_RISCV_LO12_S = 28,
    R_RISCV_TPREL_HI20 = 29,
    R_RISCV_TPREL_LO12_I = 30,
    R_RISCV_TPREL_LO12_S = 31,
    R_RISCV_TPREL_ADD = 32,
    R_RISCV_ADD8 = 33,
    R_RISCV_ADD16 = 34,
    R_RISCV_ADD32 = 35,
    R_RISCV_ADD64 = 36,
    R_RISCV_SUB8 = 37,
    R_RISCV_SUB16 = 38,
    R_RISCV_SUB32 = 39,
    R_RISCV_SUB64 = 40,
    R_RISCV_GNU_VTINHERIT = 41,
    R_RISCV_GNU_VTENTRY = 42,
    R_RISCV_ALIGN = 43,
    R_RISCV_RVC_BRANCH = 44,
    R_RISCV_RVC_JUMP = 45,
    R_RISCV_RVC_LUI = 46,
    R_RISCV_GPREL_I = 47,
    R_RISCV_GPREL_S = 48,
    R_RISCV_TPREL_I = 49,
    R_RISCV_TPREL_S = 50,
    R_RISCV_RELAX = 51,
    R_RISCV_SUB6 = 52,
    R_RISCV_SET6 = 53,
    R_RISCV_SET8 = 54,
    R_RISCV_SET16 = 55,
    R_RISCV_SET32 = 56,
    R_RISCV_32_PCREL = 57,

    R_RISCV_UNKNOWN = 0xBADFACED,
};

pub const RelocationSPARC = enum(u32) {
    R_SPARC_NONE = 0,
    R_SPARC_8 = 1,
    R_SPARC_16 = 2,
    R_SPARC_32 = 3,
    R_SPARC_DISP8 = 4,
    R_SPARC_DISP16 = 5,
    R_SPARC_DISP32 = 6,
    R_SPARC_WDISP30 = 7,
    R_SPARC_WDISP22 = 8,
    R_SPARC_HI22 = 9,
    R_SPARC_22 = 10,
    R_SPARC_13 = 11,
    R_SPARC_LO10 = 12,
    R_SPARC_GOT10 = 13,
    R_SPARC_GOT13 = 14,
    R_SPARC_GOT22 = 15,
    R_SPARC_PC10 = 16,
    R_SPARC_PC22 = 17,
    R_SPARC_WPLT30 = 18,
    R_SPARC_COPY = 19,
    R_SPARC_GLOB_DAT = 20,
    R_SPARC_JMP_SLOT = 21,
    R_SPARC_RELATIVE = 22,
    R_SPARC_UA32 = 23,
    R_SPARC_PLT32 = 24,
    R_SPARC_HIPLT22 = 25,
    R_SPARC_LOPLT10 = 26,
    R_SPARC_PCPLT32 = 27,
    R_SPARC_PCPLT22 = 28,
    R_SPARC_PCPLT10 = 29,
    R_SPARC_10 = 30,
    R_SPARC_11 = 31,
    R_SPARC_64 = 32,
    R_SPARC_OLO10 = 33,
    R_SPARC_HH22 = 34,
    R_SPARC_HM10 = 35,
    R_SPARC_LM22 = 36,
    R_SPARC_PC_HH22 = 37,
    R_SPARC_PC_HM10 = 38,
    R_SPARC_PC_LM22 = 39,
    R_SPARC_WDISP16 = 40,
    R_SPARC_WDISP19 = 41,
    R_SPARC_GLOB_JMP = 42,
    R_SPARC_7 = 43,
    R_SPARC_5 = 44,
    R_SPARC_6 = 45,
    R_SPARC_DISP64 = 46,
    R_SPARC_PLT64 = 47,
    R_SPARC_HIX22 = 48,
    R_SPARC_LOX10 = 49,
    R_SPARC_H44 = 50,
    R_SPARC_M44 = 51,
    R_SPARC_L44 = 52,
    R_SPARC_REGISTER = 53,
    R_SPARC_UA64 = 54,
    R_SPARC_UA16 = 55,

    R_SPARC_UNKNOWN = 0xBADFACED,
};

pub const RelocationX86_64 = enum(u32) {
    R_X86_64_NONE = 0,
    R_X86_64_64 = 1,
    R_X86_64_PC32 = 2,
    R_X86_64_GOT32 = 3,
    R_X86_64_PLT32 = 4,
    R_X86_64_COPY = 5,
    R_X86_64_GLOB_DAT = 6,
    R_X86_64_JMP_SLOT = 7,
    R_X86_64_RELATIVE = 8,
    R_X86_64_GOTPCREL = 9,
    R_X86_64_32 = 10,
    R_X86_64_32S = 11,
    R_X86_64_16 = 12,
    R_X86_64_PC16 = 13,
    R_X86_64_8 = 14,
    R_X86_64_PC8 = 15,
    R_X86_64_DTPMOD64 = 16,
    R_X86_64_DTPOFF64 = 17,
    R_X86_64_TPOFF64 = 18,
    R_X86_64_TLSGD = 19,
    R_X86_64_TLSLD = 20,
    R_X86_64_DTPOFF32 = 21,
    R_X86_64_GOTTPOFF = 22,
    R_X86_64_TPOFF32 = 23,
    R_X86_64_PC64 = 24,
    R_X86_64_GOTOFF64 = 25,
    R_X86_64_GOTPC32 = 26,
    R_X86_64_GOT64 = 27,
    R_X86_64_GOTPCREL64 = 28,
    R_X86_64_GOTPC64 = 29,
    R_X86_64_GOTPLT64 = 30,
    R_X86_64_PLTOFF64 = 31,
    R_X86_64_SIZE32 = 32,
    R_X86_64_SIZE64 = 33,
    R_X86_64_GOTPC32_TLSDESC = 34,
    R_X86_64_TLSDESC_CALL = 35,
    R_X86_64_TLSDESC = 36,
    R_X86_64_IRELATIVE = 37,
    R_X86_64_RELATIVE64 = 38,
    R_X86_64_PC32_BND = 39,
    R_X86_64_PLT32_BND = 40,
    R_X86_64_GOTPCRELX = 41,
    R_X86_64_REX_GOTPCRELX = 42,

    R_X86_64_UNKNOWN = 0xBADFACED,
};
