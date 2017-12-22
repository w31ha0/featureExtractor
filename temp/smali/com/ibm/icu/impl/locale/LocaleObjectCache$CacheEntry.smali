.class Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "LocaleObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private _key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 77
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 78
    iput-object p1, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;->_key:Ljava/lang/Object;

    .line 79
    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ibm/icu/impl/locale/LocaleObjectCache$CacheEntry;->_key:Ljava/lang/Object;

    return-object v0
.end method
