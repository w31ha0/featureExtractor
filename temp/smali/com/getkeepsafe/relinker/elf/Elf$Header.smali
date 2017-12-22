.class public abstract Lcom/getkeepsafe/relinker/elf/Elf$Header;
.super Ljava/lang/Object;
.source "Elf.java"


# instance fields
.field public bigEndian:Z

.field public phentsize:I

.field public phnum:I

.field public phoff:J

.field public shentsize:I

.field public shnum:I

.field public shoff:J

.field public shstrndx:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getDynamicStructure(JI)Lcom/getkeepsafe/relinker/elf/Elf$DynamicStructure;
.end method

.method public abstract getProgramHeader(J)Lcom/getkeepsafe/relinker/elf/Elf$ProgramHeader;
.end method

.method public abstract getSectionHeader(I)Lcom/getkeepsafe/relinker/elf/Elf$SectionHeader;
.end method
