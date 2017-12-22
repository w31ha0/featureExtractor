.class final Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;
.super Ljava/lang/Object;
.source "AutoValue_CreditMarks.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;
    .locals 5

    .prologue
    .line 11
    new-instance v0, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;-><init>(IIII)V

    .line 11
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;->createFromParcel(Landroid/os/Parcel;)Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;
    .locals 1

    .prologue
    .line 20
    new-array v0, p1, [Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks$1;->newArray(I)[Lcom/netflix/model/leafs/blades/AutoValue_CreditMarks;

    move-result-object v0

    return-object v0
.end method
