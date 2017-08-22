.class public interface abstract Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;
.super Ljava/lang/Object;
.source "MobFoxLocationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/services/MobFoxLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
.end method

.method public abstract onLocation(Landroid/location/Location;)V
.end method
