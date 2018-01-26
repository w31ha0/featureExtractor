.class public Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;
.super Lcom/google/android/maps/OverlayItem;
.source "SitesOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/layout/views/map/SitesOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WrappedOverlayItem"
.end annotation


# instance fields
.field private poiInfo:Lcom/biznessapps/model/AroundUsItem$PoiItem;

.field final synthetic this$0:Lcom/biznessapps/layout/views/map/SitesOverlay;


# direct methods
.method public constructor <init>(Lcom/biznessapps/layout/views/map/SitesOverlay;Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "snippet"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->this$0:Lcom/biznessapps/layout/views/map/SitesOverlay;

    .line 140
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void
.end method

.method public constructor <init>(Lcom/biznessapps/layout/views/map/SitesOverlay;Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 0
    .param p2, "point"    # Lcom/google/android/maps/GeoPoint;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "snippet"    # Ljava/lang/String;
    .param p5, "poiInfo"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->this$0:Lcom/biznessapps/layout/views/map/SitesOverlay;

    .line 144
    invoke-direct {p0, p2, p3, p4}, Lcom/google/android/maps/OverlayItem;-><init>(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iput-object p5, p0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->poiInfo:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .line 146
    return-void
.end method


# virtual methods
.method public getPoiInfo()Lcom/biznessapps/model/AroundUsItem$PoiItem;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/SitesOverlay$WrappedOverlayItem;->poiInfo:Lcom/biznessapps/model/AroundUsItem$PoiItem;

    return-object v0
.end method
