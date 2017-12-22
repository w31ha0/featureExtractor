.class public final Lcom/crittercism/internal/bv$r;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crittercism/internal/bu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 275
    const-string/jumbo v0, "model"

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1279
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 273
    return-object v0
.end method
