.class public final Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;
.super Ljava/lang/Object;
.source "AdvancedImageView.java"


# instance fields
.field public final bitmapConfig:Landroid/graphics/Bitmap$Config;

.field public final imageUrl:Ljava/lang/String;

.field public final imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

.field public loaded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Landroid/graphics/Bitmap$Config;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->loaded:Z

    .line 35
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imageUrl:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->imgViewConfig:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    .line 37
    iput-object p3, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 38
    return-void
.end method


# virtual methods
.method public setLoaded(Z)V
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView$ImageLoaderInfo;->loaded:Z

    .line 42
    return-void
.end method
