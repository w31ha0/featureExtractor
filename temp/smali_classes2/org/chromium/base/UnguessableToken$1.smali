.class final Lorg/chromium/base/UnguessableToken$1;
.super Ljava/lang/Object;
.source "UnguessableToken.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lorg/chromium/base/UnguessableToken;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/chromium/base/UnguessableToken$1;->createFromParcel(Landroid/os/Parcel;)Lorg/chromium/base/UnguessableToken;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/chromium/base/UnguessableToken;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 62
    cmp-long v0, v2, v8

    if-eqz v0, :cond_0

    cmp-long v0, v4, v8

    if-nez v0, :cond_1

    :cond_0
    move-object v1, v6

    .line 66
    :goto_0
    return-object v1

    :cond_1
    new-instance v1, Lorg/chromium/base/UnguessableToken;

    invoke-direct/range {v1 .. v6}, Lorg/chromium/base/UnguessableToken;-><init>(JJLorg/chromium/base/UnguessableToken$1;)V

    goto :goto_0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lorg/chromium/base/UnguessableToken$1;->newArray(I)[Lorg/chromium/base/UnguessableToken;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lorg/chromium/base/UnguessableToken;
    .locals 1

    .prologue
    .line 71
    new-array v0, p1, [Lorg/chromium/base/UnguessableToken;

    return-object v0
.end method
