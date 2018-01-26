.class public Lcom/biznessapps/player/PlayerState;
.super Ljava/lang/Object;
.source "PlayerState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/biznessapps/player/PlayerState;",
            ">;"
        }
    .end annotation
.end field

.field public static final PAUSED:I = 0x3

.field public static final PLAYING:I = 0x1

.field public static final STOPPED:I = 0x2


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/biznessapps/player/PlayerState$1;

    invoke-direct {v0}, Lcom/biznessapps/player/PlayerState$1;-><init>()V

    sput-object v0, Lcom/biznessapps/player/PlayerState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/biznessapps/player/PlayerState;->state:I

    .line 30
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/biznessapps/player/PlayerState;->state:I

    return v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "newState"    # I

    .prologue
    .line 22
    iput p1, p0, Lcom/biznessapps/player/PlayerState;->state:I

    .line 23
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget v0, p0, Lcom/biznessapps/player/PlayerState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
