.class public Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzCY:I

.field final zzadd:Ljava/lang/String;

.field final zzade:J

.field final zzadf:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/drive/metadata/internal/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/drive/metadata/internal/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzCY:I

    iput-object p2, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzadd:Ljava/lang/String;

    iput-wide p3, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzade:J

    iput p5, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzadf:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;-><init>(ILjava/lang/String;JI)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/zzm;->zza(Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzD(J)Lcom/google/android/gms/drive/DriveId;
    .locals 7

    new-instance v0, Lcom/google/android/gms/drive/DriveId;

    iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzadd:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzade:J

    iget v6, p0, Lcom/google/android/gms/drive/metadata/internal/PartialDriveId;->zzadf:I

    move-wide v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/drive/DriveId;-><init>(Ljava/lang/String;JJI)V

    return-object v0
.end method
