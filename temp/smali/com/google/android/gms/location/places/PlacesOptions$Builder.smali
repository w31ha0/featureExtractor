.class public Lcom/google/android/gms/location/places/PlacesOptions$Builder;
.super Ljava/lang/Object;


# instance fields
.field private zzazY:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/location/places/PlacesOptions$Builder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/places/PlacesOptions$Builder;->zzazY:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/android/gms/location/places/PlacesOptions;
    .locals 2

    new-instance v0, Lcom/google/android/gms/location/places/PlacesOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/location/places/PlacesOptions;-><init>(Lcom/google/android/gms/location/places/PlacesOptions$Builder;Lcom/google/android/gms/location/places/PlacesOptions$1;)V

    return-object v0
.end method
