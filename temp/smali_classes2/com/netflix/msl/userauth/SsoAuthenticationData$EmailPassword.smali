.class public Lcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;
.super Ljava/lang/Object;
.source "SsoAuthenticationData.java"


# instance fields
.field public final email:Ljava/lang/String;

.field public final password:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;->email:Ljava/lang/String;

    .line 74
    iput-object p2, p0, Lcom/netflix/msl/userauth/SsoAuthenticationData$EmailPassword;->password:Ljava/lang/String;

    .line 75
    return-void
.end method
