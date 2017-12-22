.class public interface abstract Lcom/netflix/mediaclient/util/gfx/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# static fields
.field public static final PRIORITY_LOW:I = 0x0

.field public static final PRIORITY_NORMAL:I = 0x1


# virtual methods
.method public abstract cancelAllRequests()V
.end method

.method public abstract clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V
.end method

.method public abstract getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V
.end method

.method public abstract getInteractiveTracker(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;
.end method

.method public abstract refreshImgIfNecessary(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;)V
.end method

.method public abstract setInteractiveTracker(Lcom/netflix/mediaclient/service/logging/perf/InteractiveTracker;)V
.end method

.method public abstract showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;Z)V
.end method

.method public abstract showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V
.end method

.method public abstract showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V
.end method
