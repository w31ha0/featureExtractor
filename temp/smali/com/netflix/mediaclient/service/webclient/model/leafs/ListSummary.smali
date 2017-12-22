.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;
.super Ljava/lang/Object;
.source "ListSummary.java"


# instance fields
.field private length:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->length:I

    .line 14
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->length:I

    .line 18
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->length:I

    return v0
.end method

.method public setLength(I)V
    .locals 0

    .prologue
    .line 28
    iput p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->length:I

    .line 29
    return-void
.end method

.method protected writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/ListSummary;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    return-void
.end method
