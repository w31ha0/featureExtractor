.class public interface abstract Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;
.super Ljava/lang/Object;
.source "AsyncCallbackDrawable.java"


# virtual methods
.method public abstract onComplete(ILandroid/graphics/drawable/Drawable;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
