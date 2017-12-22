.class final Lorg/chromium/base/library_loader/Linker$LibInfo$1;
.super Ljava/lang/Object;
.source "Linker.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/chromium/base/library_loader/Linker$LibInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/Linker$LibInfo$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/base/library_loader/Linker$LibInfo;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/chromium/base/library_loader/Linker$LibInfo;
    .locals 1

    .prologue
    .line 755
    new-instance v0, Lorg/chromium/base/library_loader/Linker$LibInfo;

    invoke-direct {v0, p1}, Lorg/chromium/base/library_loader/Linker$LibInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 752
    invoke-virtual {p0, p1}, Lorg/chromium/base/library_loader/Linker$LibInfo$1;->newArray(I)[Lorg/chromium/base/library_loader/Linker$LibInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/chromium/base/library_loader/Linker$LibInfo;
    .locals 1

    .prologue
    .line 760
    new-array v0, p1, [Lorg/chromium/base/library_loader/Linker$LibInfo;

    return-object v0
.end method
