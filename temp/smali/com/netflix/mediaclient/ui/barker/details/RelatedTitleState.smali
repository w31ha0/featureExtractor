.class public Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;
.super Ljava/lang/Object;
.source "RelatedTitleState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RelatedTitleState"


# instance fields
.field orientation:I

.field playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field recyclerViewState:Landroid/os/Parcelable;

.field seasonSelectIndex:I

.field titleId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    :try_start_0
    const-class v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->seasonSelectIndex:I

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->orientation:I

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    .line 56
    const-class v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 57
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-string/jumbo v1, "SPY-9006: Failed to load layout manager state"

    .line 50
    const-string/jumbo v2, "RelatedTitleState"

    invoke-static {v2, v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$1;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p3, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->seasonSelectIndex:I

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    .line 28
    iput p4, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->orientation:I

    .line 29
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    .line 30
    iput-object p5, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 31
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

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 39
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->seasonSelectIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->orientation:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 43
    return-void
.end method
