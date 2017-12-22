.class final Lcom/ibm/icu/impl/Normalizer2Impl$1;
.super Ljava/lang/Object;
.source "Normalizer2Impl.java"

# interfaces
.implements Lcom/ibm/icu/impl/Trie2$ValueMapper;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 566
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public map(I)I
    .locals 1

    .prologue
    .line 569
    const/high16 v0, -0x80000000

    and-int/2addr v0, p1

    return v0
.end method
