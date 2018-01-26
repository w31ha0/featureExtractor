.class public Lcom/biznessapps/activities/AroundUsActivity;
.super Lcom/google/android/maps/MapActivity;
.source "AroundUsActivity.java"

# interfaces
.implements Lcom/biznessapps/constants/AppConstants;


# static fields
.field private static zoomValue:I


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

.field protected evenRowColor:I

.field protected evenRowTextColor:I

.field private greenButton:Landroid/widget/Button;

.field protected hasColor:Z

.field private item:Lcom/biznessapps/model/AroundUsItem;

.field private itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

.field private loadDataTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

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

.field protected navigationBarColor:I

.field protected navigationTextColor:I

.field protected navigationTextShadowColor:I

.field protected oddRowColor:I

.field protected oddRowTextColor:I

.field private progressBar:Landroid/app/ProgressDialog;

.field private purpleButton:Landroid/widget/Button;

.field private redButton:Landroid/widget/Button;

.field protected sectionBarColor:I

.field protected sectionTextColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xe

    sput v0, Lcom/biznessapps/activities/AroundUsActivity;->zoomValue:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const v2, -0x333334

    const/high16 v1, -0x1000000

    .line 53
    invoke-direct {p0}, Lcom/google/android/maps/MapActivity;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->hasColor:Z

    .line 68
    iput v3, p0, Lcom/biznessapps/activities/AroundUsActivity;->evenRowColor:I

    .line 69
    iput v3, p0, Lcom/biznessapps/activities/AroundUsActivity;->oddRowColor:I

    .line 70
    iput v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->evenRowTextColor:I

    .line 71
    iput v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->oddRowTextColor:I

    .line 72
    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationBarColor:I

    .line 73
    iput v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationTextColor:I

    .line 74
    iput v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationTextShadowColor:I

    .line 75
    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->sectionBarColor:I

    .line 76
    iput v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->sectionTextColor:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    .line 89
    new-instance v0, Lcom/biznessapps/model/AroundUsItem;

    invoke-direct {v0}, Lcom/biznessapps/model/AroundUsItem;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/activities/AroundUsActivity;)Lcom/biznessapps/model/AroundUsItem;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    return-object v0
.end method

.method static synthetic access$002(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem;)Lcom/biznessapps/model/AroundUsItem;
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;
    .param p1, "x1"    # Lcom/biznessapps/model/AroundUsItem;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    return-object p1
.end method

.method static synthetic access$100(Lcom/biznessapps/activities/AroundUsActivity;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/activities/AroundUsActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/AroundUsActivity;->initPoints(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/activities/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initPointsMap()V

    return-void
.end method

.method static synthetic access$400(Lcom/biznessapps/activities/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->setButtonsData()V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/activities/AroundUsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->defineButtonsVisibility()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;
    .param p1, "x1"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/AroundUsActivity;->showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    return-void
.end method

.method static synthetic access$700(Lcom/biznessapps/activities/AroundUsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/activities/AroundUsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/biznessapps/activities/AroundUsActivity;->openWebView(Ljava/lang/String;)V

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

    .line 142
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

    .line 144
    .local v0, "p":Lcom/google/android/maps/GeoPoint;
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/MapController;->animateTo(Lcom/google/android/maps/GeoPoint;)V

    .line 145
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {v1, v0, p3, p4, p5}, Lcom/biznessapps/layout/views/map/SitesOverlay;->createNewOverlay(Lcom/google/android/maps/GeoPoint;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    .line 146
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v1

    sget v2, Lcom/biznessapps/activities/AroundUsActivity;->zoomValue:I

    invoke-virtual {v1, v2}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 147
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v1}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 148
    return-void
.end method

.method private defineButtonsVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 268
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleColor()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 277
    :cond_2
    return-void
.end method

.method private getImageManager()Lcom/biznessapps/utils/ImageManager;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    return-object v0
.end method

.method private getMarker()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 180
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$drawable;->bubble:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 181
    .local v0, "marker":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 182
    return-object v0
.end method

.method private getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;
    .locals 1

    .prologue
    .line 298
    new-instance v0, Lcom/biznessapps/activities/AroundUsActivity$5;

    invoke-direct {v0, p0}, Lcom/biznessapps/activities/AroundUsActivity$5;-><init>(Lcom/biznessapps/activities/AroundUsActivity;)V

    return-object v0
.end method

.method private initItemColors()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 383
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getAppSettings()Lcom/biznessapps/model/AppSettings;

    move-result-object v0

    .line 384
    .local v0, "appSettings":Lcom/biznessapps/model/AppSettings;
    if-eqz v0, :cond_8

    .line 386
    :try_start_0
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getEvenRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getEvenRowColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->evenRowColor:I

    .line 389
    :cond_0
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getOddRowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 390
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getOddRowColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->oddRowColor:I

    .line 391
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->hasColor:Z

    .line 393
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getEvenRowTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->evenRowTextColor:I

    .line 396
    :cond_2
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getOddRowTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->oddRowTextColor:I

    .line 399
    :cond_3
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationBarColor:I

    .line 402
    :cond_4
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationTextColor:I

    .line 405
    :cond_5
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getNavigBarTextShadowColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->navigationTextShadowColor:I

    .line 408
    :cond_6
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getSectionBarColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 409
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getSectionBarColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->sectionBarColor:I

    .line 411
    :cond_7
    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/biznessapps/model/AppSettings;->getSectionBarTextColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->sectionTextColor:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 422
    :cond_8
    :goto_0
    return-void

    .line 414
    :catch_0
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 416
    iput-boolean v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->hasColor:Z

    goto :goto_0

    .line 417
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 418
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 419
    iput-boolean v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->hasColor:Z

    goto :goto_0
.end method

.method private initItemizedOverlay()V
    .locals 4

    .prologue
    .line 154
    new-instance v0, Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getMarker()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getTapHandler()Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/biznessapps/layout/views/map/SitesOverlay;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/biznessapps/layout/views/map/SitesOverlay$TapHandler;)V

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    .line 155
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getOverlays()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->itemizedOverlay:Lcom/biznessapps/layout/views/map/SitesOverlay;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 158
    return-void
.end method

.method private initMap()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 164
    sget v0, Lcom/biznessapps/layout/R$id;->around_us_mapview:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/MapView;

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    .line 165
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setBuiltInZoomControls(Z)V

    .line 166
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapView;->setSatellite(Z)V

    .line 167
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setStreetView(Z)V

    .line 168
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/maps/MapView;->setClickable(Z)V

    .line 169
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
    .line 237
    .local p1, "poi":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    if-eqz p1, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initItemizedOverlay()V

    .line 239
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 246
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

    .line 247
    .local v5, "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLatitude()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getLongitude()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/activities/AroundUsActivity;->addGeoPoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/biznessapps/model/AroundUsItem$PoiItem;)V

    goto :goto_0

    .line 253
    .end local v5    # "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private initPointsMap()V
    .locals 6

    .prologue
    .line 221
    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v4}, Lcom/biznessapps/model/AroundUsItem;->getPoi()Ljava/util/List;

    move-result-object v2

    .line 222
    .local v2, "points":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 223
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

    .line 225
    .local v1, "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 230
    .local v3, "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :goto_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v4, p0, Lcom/biznessapps/activities/AroundUsActivity;->mapPoints:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getColor()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    .end local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    goto :goto_1

    .line 234
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/model/AroundUsItem$PoiItem;
    .end local v3    # "pois":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/biznessapps/model/AroundUsItem$PoiItem;>;"
    :cond_1
    return-void
.end method

.method private initTitleBar()V
    .locals 9

    .prologue
    const v8, 0x3f99999a    # 1.2f

    .line 353
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/AppCore;->getUiSettings()Lcom/biznessapps/api/AppCore$UiSettings;

    move-result-object v3

    .line 354
    .local v3, "uiSettings":Lcom/biznessapps/api/AppCore$UiSettings;
    sget v4, Lcom/biznessapps/layout/R$id;->tab_title_container:I

    invoke-virtual {p0, v4}, Lcom/biznessapps/activities/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 355
    .local v1, "titleBarRoot":Landroid/view/ViewGroup;
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationBarColor()I

    move-result v7

    aput v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, -0x1

    aput v7, v5, v6

    invoke-direct {v0, v4, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 360
    .local v0, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 361
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 363
    sget v4, Lcom/biznessapps/layout/R$id;->tab_title_text:I

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 364
    .local v2, "titleTextView":Landroid/widget/TextView;
    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextColor()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 365
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "TAB_LABEL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-virtual {v3}, Lcom/biznessapps/api/AppCore$UiSettings;->getNavigationTextShadowColor()I

    move-result v4

    invoke-virtual {v2, v8, v8, v8, v4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 367
    return-void
.end method

.method private loadData()V
    .locals 4

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->showProgressBar()V

    .line 187
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "TAB_SPECIAL_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "tabId":Ljava/lang/String;
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    .line 189
    .local v0, "cacher":Lcom/biznessapps/api/CachingManager;
    new-instance v2, Lcom/biznessapps/activities/AroundUsActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/biznessapps/activities/AroundUsActivity$4;-><init>(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/api/CachingManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    .line 217
    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    return-void
.end method

.method private openWebView(Ljava/lang/String;)V
    .locals 6
    .param p1, "webData"    # Ljava/lang/String;

    .prologue
    .line 370
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 371
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p1}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    const-string v1, "WEB_DATA"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 373
    const-string v1, "TAB_FRAGMENT"

    const-string v2, "WEB_VIEW_SINGLE_FRAGMENT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    const-string v1, "TAB_UNIQUE_ID"

    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_UNIQUE_ID"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 375
    const-string v1, "TAB_LABEL"

    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TAB_LABEL"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 380
    :goto_0
    return-void

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->data_loading_failure:I

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private setButtonsData()V
    .locals 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getGreenColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 257
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getGreenTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 258
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getGreenTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getRedColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 260
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getRedTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 261
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getRedTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getPurpleColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 263
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/AroundUsItem;->getPurpleTextColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 264
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->item:Lcom/biznessapps/model/AroundUsItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/AroundUsItem;->getPurpleTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    return-void
.end method

.method private setCustomButtonStyle(Landroid/widget/Button;)V
    .locals 5
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/utils/ImageManager;->getCustomButtonData()Lcom/biznessapps/utils/ImageManager$CustomButtonData;

    move-result-object v0

    .line 430
    .local v0, "buttonData":Lcom/biznessapps/utils/ImageManager$CustomButtonData;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getCustomButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 432
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_1

    .line 433
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 435
    .restart local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_1
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getCustomButtonUrl()Ljava/lang/String;

    move-result-object v2

    .line 436
    .local v2, "buttonUrl":Ljava/lang/String;
    invoke-static {v2}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 437
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v2, p1, v4}, Lcom/biznessapps/utils/ImageManager;->download(Ljava/lang/String;Landroid/view/View;Z)V

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getDrawableResourceId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 440
    invoke-virtual {v0}, Lcom/biznessapps/utils/ImageManager$CustomButtonData;->getTextColorId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0
.end method

.method private showDialog(Lcom/biznessapps/model/AroundUsItem$PoiItem;)V
    .locals 7
    .param p1, "poiItem"    # Lcom/biznessapps/model/AroundUsItem$PoiItem;

    .prologue
    .line 308
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 310
    .local v0, "alertBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/biznessapps/layout/R$layout;->pin_dialog:I

    invoke-static {v5, v6}, Lcom/biznessapps/utils/ViewUtils;->loadLayout(Landroid/content/Context;I)Landroid/view/View;

    move-result-object v4

    .line 311
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 312
    invoke-virtual {p1}, Lcom/biznessapps/model/AroundUsItem$PoiItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 313
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 315
    .local v1, "dialog":Landroid/app/AlertDialog;
    sget v5, Lcom/biznessapps/layout/R$id;->more_info_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 316
    .local v3, "moreInfoButton":Landroid/widget/Button;
    sget v5, Lcom/biznessapps/layout/R$id;->pin_location_button:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 318
    .local v2, "directionsButton":Landroid/widget/Button;
    iget v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgResId:I

    if-lez v5, :cond_1

    .line 319
    iget v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgResId:I

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 320
    iget v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgResId:I

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 325
    :cond_0
    :goto_0
    invoke-direct {p0, v3}, Lcom/biznessapps/activities/AroundUsActivity;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 326
    invoke-direct {p0, v2}, Lcom/biznessapps/activities/AroundUsActivity;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 327
    new-instance v5, Lcom/biznessapps/activities/AroundUsActivity$6;

    invoke-direct {v5, p0, p1, v1}, Lcom/biznessapps/activities/AroundUsActivity$6;-><init>(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    new-instance v5, Lcom/biznessapps/activities/AroundUsActivity$7;

    invoke-direct {v5, p0, p1, v1}, Lcom/biznessapps/activities/AroundUsActivity$7;-><init>(Lcom/biznessapps/activities/AroundUsActivity;Lcom/biznessapps/model/AroundUsItem$PoiItem;Landroid/app/AlertDialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 350
    return-void

    .line 321
    :cond_1
    iget-object v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 322
    iget-object v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 323
    iget-object v5, p0, Lcom/biznessapps/activities/AroundUsActivity;->drawableBgIcon:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected isRouteDisplayed()Z
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/google/android/maps/MapActivity;->onCreate(Landroid/os/Bundle;)V

    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->requestWindowFeature(I)Z

    .line 107
    sget v0, Lcom/biznessapps/layout/R$layout;->around_us_layout:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->setContentView(I)V

    .line 108
    invoke-static {}, Lcom/biznessapps/api/UIHandler;->get()Landroid/os/Handler;

    .line 109
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initMap()V

    .line 110
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initItemColors()V

    .line 111
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initTitleBar()V

    .line 112
    sget v0, Lcom/biznessapps/layout/R$id;->around_us_green_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    .line 113
    sget v0, Lcom/biznessapps/layout/R$id;->around_us_red_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    .line 114
    sget v0, Lcom/biznessapps/layout/R$id;->around_us_purple_button:I

    invoke-virtual {p0, v0}, Lcom/biznessapps/activities/AroundUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    .line 115
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->greenButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/activities/AroundUsActivity$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/activities/AroundUsActivity$1;-><init>(Lcom/biznessapps/activities/AroundUsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->redButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/activities/AroundUsActivity$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/activities/AroundUsActivity$2;-><init>(Lcom/biznessapps/activities/AroundUsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->purpleButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/activities/AroundUsActivity$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/activities/AroundUsActivity$3;-><init>(Lcom/biznessapps/activities/AroundUsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->initTitleBar()V

    .line 134
    invoke-direct {p0}, Lcom/biznessapps/activities/AroundUsActivity;->loadData()V

    .line 135
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->getController()Lcom/google/android/maps/MapController;

    move-result-object v0

    sget v1, Lcom/biznessapps/activities/AroundUsActivity;->zoomValue:I

    invoke-virtual {v0, v1}, Lcom/google/android/maps/MapController;->setZoom(I)I

    .line 136
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->map:Lcom/google/android/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/maps/MapView;->invalidate()V

    .line 137
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/google/android/maps/MapActivity;->onStop()V

    .line 96
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->loadDataTask:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 98
    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->stopProgressBar()V

    .line 100
    :cond_0
    return-void
.end method

.method protected showProgressBar()V
    .locals 3

    .prologue
    .line 283
    const-string v0, ""

    invoke-virtual {p0}, Lcom/biznessapps/activities/AroundUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/biznessapps/layout/R$string;->loading:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->progressBar:Landroid/app/ProgressDialog;

    .line 284
    iget-object v0, p0, Lcom/biznessapps/activities/AroundUsActivity;->progressBar:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 285
    return-void
.end method

.method protected stopProgressBar()V
    .locals 2

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->progressBar:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/biznessapps/activities/AroundUsActivity;->progressBar:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
