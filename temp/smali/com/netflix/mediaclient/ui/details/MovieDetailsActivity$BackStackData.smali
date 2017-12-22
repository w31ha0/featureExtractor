.class public Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;
.super Ljava/lang/Object;
.source "MovieDetailsActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bIsShow:Z

.field public layoutManagerState:Landroid/os/Parcelable;

.field public final playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field public final videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    .line 211
    const-class v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 217
    :try_start_0
    const-class v0, Landroid/support/v7/widget/GridLayoutManager;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->layoutManagerState:Landroid/os/Parcelable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->bIsShow:Z

    .line 224
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    const-string/jumbo v2, "SPY-8852: Failed to load layout manager state"

    .line 220
    const-string/jumbo v3, "MovieDetailsActivity"

    invoke-static {v3, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 221
    invoke-static {v0}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 223
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$1;)V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    .line 203
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 204
    if-eqz p3, :cond_0

    .line 205
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->layoutManagerState:Landroid/os/Parcelable;

    .line 207
    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BackStackData [videoId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", playContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", layoutManagerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->layoutManagerState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->videoId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 230
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->layoutManagerState:Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 231
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity$BackStackData;->bIsShow:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 232
    return-void
.end method
