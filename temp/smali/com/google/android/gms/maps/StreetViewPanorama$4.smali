.class Lcom/google/android/gms/maps/StreetViewPanorama$4;
.super Lcom/google/android/gms/maps/internal/zzu$zza;


# instance fields
.field final synthetic zzaCl:Lcom/google/android/gms/maps/StreetViewPanorama;

.field final synthetic zzaCo:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/StreetViewPanorama;Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaCl:Lcom/google/android/gms/maps/StreetViewPanorama;

    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaCo:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/zzu$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanorama$4;->zzaCo:Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;

    invoke-interface {v0, p1}, Lcom/google/android/gms/maps/StreetViewPanorama$OnStreetViewPanoramaLongClickListener;->onStreetViewPanoramaLongClick(Lcom/google/android/gms/maps/model/StreetViewPanoramaOrientation;)V

    return-void
.end method
