.class public Lcom/biznessapps/layout/views/map/SitesOverlay;
.super Lcom/google/android/maps/ItemizedOverlay;
.source "SitesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;,
        Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/maps/ItemizedOverlay",
        "<",
        "Lcom/google/android/maps/OverlayItem;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private overlayList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;",
            ">;"
        }
    .end annotation
.end field

.field private tapHandler:Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 29
    invoke-static {p2}, Lcom/biznessapps/layout/views/map/SitesOverlay;->boundCenterBottom(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/maps/ItemizedOverlay;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->context:Landroid/content/Context;

    .line 31
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/SitesOverlay;->populate()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "marker"    # Landroid/graphics/drawable/Drawable;
    .param p3, "tapHandler"    # Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/layout/views/map/SitesOverlay;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 36
    iput-object p3, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->tapHandler:Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    .line 37
    return-void
.end method

.method private addOverlay(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V
    .locals 1
    .param p1, "overlay"    # Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/SitesOverlay;->populate()V

    .line 114
    return-void
.end method

.method private getNewOverlayItem(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;
    .locals 6
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "item"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 125
    new-instance v0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;-><init>(Lcom/biznessapps/layout/views/map/SitesOverlay;Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    return-object v0
.end method


# virtual methods
.method protected createItem(I)Lcom/google/android/maps/OverlayItem;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/OverlayItem;

    return-object v0
.end method

.method public createNewOverlay(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/biznessapps/layout/views/map/SitesOverlay;->getNewOverlayItem(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/layout/views/map/SitesOverlay;->addOverlay(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V

    .line 62
    return-void
.end method

.method public createNewOverlay(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 1
    .param p1, "p"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "snippet"    # Ljava/lang/String;
    .param p4, "item"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/biznessapps/layout/views/map/SitesOverlay;->getNewOverlayItem(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/layout/views/map/SitesOverlay;->addOverlay(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V

    .line 58
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "mapView"    # Lcom/google/android/maps/MapView;
    .param p3, "shadow"    # Z

    .prologue
    .line 81
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/maps/ItemizedOverlay;->draw(Landroid/graphics/Canvas;Lcom/google/android/maps/MapView;Z)V

    .line 107
    return-void
.end method

.method protected onTap(I)Z
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 66
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "============   Hot item tap on marker"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->tapHandler:Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v1, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->tapHandler:Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;

    invoke-interface {v1, v0}, Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;->overlayItemTapped(Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;)V

    .line 73
    const/4 v0, 0x1

    .line 76
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/maps/ItemizedOverlay;->onTap(I)Z

    move-result v0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay;->overlayList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
