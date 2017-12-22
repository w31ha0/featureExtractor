.class final Lcom/google/android/exoplayer/MediaFormat$1;
.super Ljava/lang/Object;
.source "MediaFormat.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/exoplayer/MediaFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 600
    new-instance v0, Lcom/google/android/exoplayer/MediaFormat;

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer/MediaFormat;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/MediaFormat$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/android/exoplayer/MediaFormat;
    .locals 1

    .prologue
    .line 605
    new-array v0, p1, [Lcom/google/android/exoplayer/MediaFormat;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 596
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer/MediaFormat$1;->newArray(I)[Lcom/google/android/exoplayer/MediaFormat;

    move-result-object v0

    return-object v0
.end method
