.class public Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;
.super Ljava/lang/Object;
.source "PresharedKeyStore.java"


# instance fields
.field public final encryptionKey:Ljavax/crypto/SecretKey;

.field public final hmacKey:Ljavax/crypto/SecretKey;

.field public final wrappingKey:Ljavax/crypto/SecretKey;


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;Ljavax/crypto/SecretKey;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->encryptionKey:Ljavax/crypto/SecretKey;

    .line 39
    iput-object p2, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->hmacKey:Ljavax/crypto/SecretKey;

    .line 40
    iput-object p3, p0, Lcom/netflix/msl/entityauth/PresharedKeyStore$KeySet;->wrappingKey:Ljavax/crypto/SecretKey;

    .line 41
    return-void
.end method
