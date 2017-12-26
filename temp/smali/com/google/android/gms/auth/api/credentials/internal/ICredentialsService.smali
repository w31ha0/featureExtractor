.class public interface abstract Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# virtual methods
.method public abstract performCredentialsDeleteOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/internal/DeleteRequest;)V
.end method

.method public abstract performCredentialsRequestOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/CredentialRequest;)V
.end method

.method public abstract performCredentialsSaveOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;Lcom/google/android/gms/auth/api/credentials/internal/SaveRequest;)V
.end method

.method public abstract performDisableAutoSignInOperation(Lcom/google/android/gms/auth/api/credentials/internal/ICredentialsCallbacks;)V
.end method
