.class public Lcom/biznessapps/layout/views/map/LocationView;
.super Lcom/google/android/maps/MapActivity;
.source "LocationView.java"


# static fields
.field public static final HAS_USER_LOCATION:Ljava/lang/String; = "has_user_location"

.field public static final LATITUDES:Ljava/lang/String; = "latitudes"

.field public static final LOCATIONS_NAME:Ljava/lang/String; = "ocations_name"

.field public static final LONGITUDES:Ljava/lang/String; = "longitudes"


# instance fields
.field private itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

.field private map:Lcom/google/android/maps/MapView;

.field private mc:Lcom/google/android/maps/MapController;

.field private zoomValue:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 25
    const/4 v0, 0x3

    iput v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->zoomValue:I

    return-void
.end method

.method private addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "latitude"    # Ljava/lang/String;
    .param p2, "longitude"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "snippet"    # Ljava/lang/String;

    .prologue
    const-wide v4, 0x412e848000000000L    # 1000000.0

    .line 72
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

    .line 74
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/biznessapps/layout/views/map/LocationView;->mc:Lcom/google/android/maps/MapController;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 75
    iget-object v1, p0, Lcom/biznessapps/layout/views/map/LocationView;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {v1, v0, p3, p4}, Lcom/biznessapps/layout/views/map/SitesOverlay;->createNewOverlay(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method private getMarker()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 107
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$drawable;->bubble:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 109
    return-object v0
.end method

.method private initItemizedOverlay()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/biznessapps/layout/views/map/SitesOverlay;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    .line 83
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/layout/views/map/LocationView;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 85
    return-void
.end method

.method private initMap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 91
    sget v0, Lcom/biznessapps/layout/R$id;->mapview:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/layout/views/map/LocationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    .line 92
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 93
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    .line 94
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    .line 95
    iget-object v0, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 96
    return-void
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 35
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    sget v9, Lcom/biznessapps/layout/R$layout;->location_layout:I

    invoke-virtual {p0, v9}, Lcom/biznessapps/layout/views/map/LocationView;->setContentView(I)V

    .line 37
    invoke-direct {p0}, Lcom/biznessapps/layout/views/map/LocationView;->initMap()V

    .line 38
    invoke-direct {p0}, Lcom/biznessapps/layout/views/map/LocationView;->initItemizedOverlay()V

    .line 39
    iget-object v9, p0, Lcom/biznessapps/layout/views/map/LocationView;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v9}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v9

    iput-object v9, p0, Lcom/biznessapps/layout/views/map/LocationView;->mc:Lcom/google/android/maps/MapController;

    .line 42
    :try_start_0
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "longitudes"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 43
    .local v8, "longitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "latitudes"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 44
    .local v4, "latitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "ocations_name"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 45
    .local v6, "locNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/biznessapps/layout/views/map/LocationView;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, "has_user_location"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 47
    .local v1, "hasUserLocation":Z
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_2

    .line 50
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_3

    .line 51
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 52
    .local v3, "latitude":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 53
    .local v7, "longitude":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 54
    .local v5, "locName":Ljava/lang/String;
    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    .line 55
    const-string v9, ""

    invoke-direct {p0, v3, v7, v5, v9}, Lcom/biznessapps/layout/views/map/LocationView;->addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v9}, Lcom/biznessapps/utils/StringUtils;->checkTextFieldsOnEmpty([Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 61
    const-string v9, ""

    invoke-direct {p0, v3, v7, v5, v9}, Lcom/biznessapps/layout/views/map/LocationView;->addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 65
    .end local v1    # "hasUserLocation":Z
    .end local v2    # "i":I
    .end local v3    # "latitude":Ljava/lang/String;
    .end local v4    # "latitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "locName":Ljava/lang/String;
    .end local v6    # "locNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "longitude":Ljava/lang/String;
    .end local v8    # "longitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 68
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_2
    return-void

    .line 63
    .restart local v1    # "hasUserLocation":Z
    .restart local v2    # "i":I
    .restart local v4    # "latitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "locNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "longitudes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_1
    iget-object v9, p0, Lcom/biznessapps/layout/views/map/LocationView;->mc:Lcom/google/android/maps/MapController;

    iget v10, p0, Lcom/biznessapps/layout/views/map/LocationView;->zoomValue:I

    invoke-virtual {v9, v10}, Lcom/google/android/maps/MapController;->setZoom(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
