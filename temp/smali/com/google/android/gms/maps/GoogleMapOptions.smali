.class public final Lcom/google/android/gms/maps/GoogleMapOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/maps/zza;


# instance fields
.field private final zzCY:I

.field private zzaBI:Ljava/lang/Boolean;

.field private zzaBJ:Ljava/lang/Boolean;

.field private zzaBK:I

.field private zzaBL:Lcom/google/android/gms/maps/model/CameraPosition;

.field private zzaBM:Ljava/lang/Boolean;

.field private zzaBN:Ljava/lang/Boolean;

.field private zzaBO:Ljava/lang/Boolean;

.field private zzaBP:Ljava/lang/Boolean;

.field private zzaBQ:Ljava/lang/Boolean;

.field private zzaBR:Ljava/lang/Boolean;

.field private zzaBS:Ljava/lang/Boolean;

.field private zzaBT:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/maps/zza;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/GoogleMapOptions;->CREATOR:Lcom/google/android/gms/maps/zza;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBK:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzCY:I

    return-void
.end method

.method constructor <init>(IBBILcom/google/android/gms/maps/model/CameraPosition;BBBBBBBB)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBK:I

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzCY:I

    invoke-static {p2}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBI:Ljava/lang/Boolean;

    invoke-static {p3}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBJ:Ljava/lang/Boolean;

    iput p4, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBK:I

    iput-object p5, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBL:Lcom/google/android/gms/maps/model/CameraPosition;

    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBM:Ljava/lang/Boolean;

    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBN:Ljava/lang/Boolean;

    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBO:Ljava/lang/Boolean;

    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBP:Ljava/lang/Boolean;

    invoke-static {p10}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBQ:Ljava/lang/Boolean;

    invoke-static {p11}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBR:Ljava/lang/Boolean;

    invoke-static {p12}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBS:Ljava/lang/Boolean;

    invoke-static {p13}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBT:Ljava/lang/Boolean;

    return-void
.end method

.method public static createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/R$styleable;->MapAttrs:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/GoogleMapOptions;-><init>()V

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_mapType:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_mapType:I

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_1
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_zOrderOnTop:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_zOrderOnTop:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_2
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_useViewLifecycle:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_useViewLifecycle:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_3
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiCompass:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiCompass:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_4
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiRotateGestures:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiRotateGestures:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_5
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiScrollGestures:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiScrollGestures:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_6
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiTiltGestures:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiTiltGestures:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_7
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomGestures:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_8

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomGestures:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_8
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomControls:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_9

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiZoomControls:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_9
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_liteMode:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_a

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_liteMode:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_a
    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiMapToolbar:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/google/android/gms/R$styleable;->MapAttrs_uiMapToolbar:I

    invoke-virtual {v1, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;

    :cond_b
    invoke-static {p0, p1}, Lcom/google/android/gms/maps/model/CameraPosition;->createFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/GoogleMapOptions;->camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0
.end method


# virtual methods
.method public camera(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBL:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object p0
.end method

.method public compassEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBN:Ljava/lang/Boolean;

    return-object p0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCamera()Lcom/google/android/gms/maps/model/CameraPosition;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBL:Lcom/google/android/gms/maps/model/CameraPosition;

    return-object v0
.end method

.method public getCompassEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBN:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLiteMode()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBS:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMapToolbarEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBT:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMapType()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBK:I

    return v0
.end method

.method public getRotateGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBR:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getScrollGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBO:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTiltGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBQ:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBJ:Ljava/lang/Boolean;

    return-object v0
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzCY:I

    return v0
.end method

.method public getZOrderOnTop()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBI:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getZoomControlsEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBM:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBP:Ljava/lang/Boolean;

    return-object v0
.end method

.method public liteMode(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBS:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mapToolbarEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBT:Ljava/lang/Boolean;

    return-object p0
.end method

.method public mapType(I)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBK:I

    return-object p0
.end method

.method public rotateGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBR:Ljava/lang/Boolean;

    return-object p0
.end method

.method public scrollGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBO:Ljava/lang/Boolean;

    return-object p0
.end method

.method public tiltGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBQ:Ljava/lang/Boolean;

    return-object p0
.end method

.method public useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBJ:Ljava/lang/Boolean;

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/maps/zza;->zza(Lcom/google/android/gms/maps/GoogleMapOptions;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zOrderOnTop(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBI:Ljava/lang/Boolean;

    return-object p0
.end method

.method public zoomControlsEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBM:Ljava/lang/Boolean;

    return-object p0
.end method

.method public zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/GoogleMapOptions;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBP:Ljava/lang/Boolean;

    return-object p0
.end method

.method zzvj()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBI:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvk()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBJ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvl()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBM:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvm()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBN:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvn()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBO:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvo()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBP:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvp()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBQ:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvq()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBR:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvr()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBS:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method

.method zzvs()B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMapOptions;->zzaBT:Ljava/lang/Boolean;

    invoke-static {v0}, Lcom/google/android/gms/maps/internal/zza;->zze(Ljava/lang/Boolean;)B

    move-result v0

    return v0
.end method
