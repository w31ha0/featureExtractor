.class public final Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# instance fields
.field private final zzaja:Ljava/lang/String;

.field private final zzajb:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;


# virtual methods
.method public zzqL()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "consumer_package"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzaja:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "password_specification"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/Auth$AuthCredentialsOptions;->zzajb:Lcom/google/android/gms/auth/api/credentials/PasswordSpecification;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
