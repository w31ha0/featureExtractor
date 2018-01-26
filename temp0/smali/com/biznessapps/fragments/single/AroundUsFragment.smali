.class public Lcom/biznessapps/fragments/single/AroundUsFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "AroundUsFragment.java"


# static fields
.field private static ZOOM_VALUE:I


# instance fields
.field private drawableBgIcon:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private drawableBgResId:I

.field private greenButton:Landroid/widget/Button;

.field private item:Lcom/biznessapps/model/AroundUsItem;

.field private itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

.field private map:Lcom/google/android/maps/MapView;

.field private mapPoints:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/biznessapps/model/AroundUsItem$PoiItem;",
            ">;>;"
        }
    .end annotation
.end field

.field private purpleButton:Landroid/widget/Button;

.field private redButton:Landroid/widget/Button;

.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0xe

    sput v0, Lcom/biznessapps/fragments/single/AroundUsFragment;->ZOOM_VALUE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/AroundUsFragment;)Lcom/biznessapps/model/AroundUsItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/AroundUsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    return-object v0
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/AroundUsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/AroundUsFragment;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/AroundUsFragment;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/AroundUsFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/AroundUsFragment;->initPoints(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/single/AroundUsFragment;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/AroundUsFragment;
    .param p1, "x1"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/AroundUsFragment;->showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/single/AroundUsFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/AroundUsFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/AroundUsFragment;->openWebView(Ljava/lang/String;)V

    return-void
.end method

.method private addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 6
    .param p1, "latitude"    # Ljava/lang/String;
    .param p2, "longitude"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "snippet"    # Ljava/lang/String;
    .param p5, "item"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 88
    new-instance v0, Lcom/google/android/maps/GeoPoint;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    mul-double/2addr v1, v4

    double-to-int v1, v1

    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/GeoPoint;-><init>(II)V

    .line 90
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 91
    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/biznessapps/layout/views/map/SitesOverlay;->createNewOverlay(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    .line 92
    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    sget v2, Lcom/biznessapps/fragments/single/AroundUsFragment;->ZOOM_VALUE:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 93
    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 94
    return-void
.end method

.method private defineButtonsVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 196
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 203
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 205
    :cond_2
    return-void
.end method

.method private getMarker()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$drawable;->bubble:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 122
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 123
    return-object v0
.end method

.method private getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;
    .locals 1

    .prologue
    .line 208
    new-instance v0, Lcom/biznessapps/fragments/single/AroundUsFragment$4;

    invoke-direct {v0, p0}, Lcom/biznessapps/fragments/single/AroundUsFragment$4;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V

    return-object v0
.end method

.method private initItemizedOverlay()V
    .locals 4

    .prologue
    .line 100
    new-instance v0, Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/layout/views/map/SitesOverlay;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;)V

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    .line 101
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 104
    return-void
.end method

.method private initMap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 110
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->around_us_mapview:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    .line 111
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 112
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    .line 113
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    .line 114
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 115
    return-void
.end method

.method private initPoints(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/AroundUsItem$PoiItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "poi":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    if-eqz p1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->initItemizedOverlay()V

    .line 173
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 174
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .line 175
    .local v5, "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/fragments/single/AroundUsFragment;->addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    goto :goto_0

    .line 181
    .end local v5    # "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private initPointsMap()V
    .locals 6

    .prologue
    .line 155
    iget-object v4, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v4}, Lcom/biznessapps/model/AroundUsItem;->getPoi()Ljava/util/List;

    move-result-object v2

    .line 156
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 157
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .line 159
    .local v1, "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    iget-object v4, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 164
    .local v3, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v4, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 162
    .end local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    goto :goto_1

    .line 168
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    .end local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :cond_1
    return-void
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 6
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "WEB_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 268
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    invoke-virtual {p0, v0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->startActivity(Landroid/content/Intent;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setButtonsData()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 185
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 186
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 188
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 191
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleTextColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/biznessapps/utils/ViewUtils;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 193
    return-void
.end method

.method private showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 7
    .param p1, "poiItem"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 218
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getHoldActivity()Lcom/biznessapps/activities/CommonFragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 220
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->pin_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v4

    .line 221
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 222
    sget v5, Lcom/biznessapps/layout/R$string;->choose_action:I

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 223
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 225
    .local v1, "dialog":Landroid/app/AlertDialog;
    sget v5, Lcom/biznessapps/layout/R$id;->more_info_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 226
    .local v3, "moreInfoButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->pin_location_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 228
    .local v2, "directionsButton":Landroid/widget/Button;
    iget v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgResId:I

    if-lez v5, :cond_1

    .line 229
    iget v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgResId:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 230
    iget v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgResId:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 235
    :cond_0
    :goto_0
    new-instance v5, Lcom/biznessapps/fragments/single/AroundUsFragment$5;

    invoke-direct {v5, p0, p1, v1}, Lcom/biznessapps/fragments/single/AroundUsFragment$5;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    new-instance v5, Lcom/biznessapps/fragments/single/AroundUsFragment$6;

    invoke-direct {v5, p0, p1, v1}, Lcom/biznessapps/fragments/single/AroundUsFragment$6;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 260
    return-void

    .line 231
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 232
    iget-object v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v5, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    const-string v0, "http://www.biznessapps.com/iphone/around_us.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleInBackground()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    sget v0, Lcom/biznessapps/layout/R$layout;->around_us_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    .line 58
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->initMap()V

    .line 59
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->around_us_green_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    .line 60
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->around_us_red_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    .line 61
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    sget v1, Lcom/biznessapps/layout/R$id;->around_us_purple_button:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    .line 62
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->greenButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/AroundUsFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/AroundUsFragment$1;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->redButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/AroundUsFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/AroundUsFragment$2;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->purpleButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/AroundUsFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/AroundUsFragment$3;-><init>(Lcom/biznessapps/fragments/single/AroundUsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->loadData()V

    .line 81
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    sget v1, Lcom/biznessapps/fragments/single/AroundUsFragment;->ZOOM_VALUE:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 82
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 83
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->tabId:Ljava/lang/String;

    .line 129
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 138
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseAroundUsData(Ljava/lang/String;)Lcom/biznessapps/model/AroundUsItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    .line 139
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 1
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->initPointsMap()V

    .line 149
    iget-object v0, p0, Lcom/biznessapps/fragments/single/AroundUsFragment;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/AroundUsItem;->getPoi()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->initPoints(Ljava/util/List;)V

    .line 150
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->setButtonsData()V

    .line 151
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/AroundUsFragment;->defineButtonsVisibility()V

    .line 152
    return-void
.end method
