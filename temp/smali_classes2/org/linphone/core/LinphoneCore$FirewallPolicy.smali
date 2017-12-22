.class public Lorg/linphone/core/LinphoneCore$FirewallPolicy;
.super Ljava/lang/Object;
.source "LinphoneCore.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static NoFirewall:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

.field public static UseIce:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

.field public static UseNatAddress:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

.field public static UseStun:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

.field public static UseUpnp:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

.field private static values:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lorg/linphone/core/LinphoneCore$FirewallPolicy;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mStringValue:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->values:Ljava/util/Vector;

    .line 182
    new-instance v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    const/4 v1, 0x0

    const-string/jumbo v2, "NoFirewall"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->NoFirewall:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    .line 186
    new-instance v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    const/4 v1, 0x1

    const-string/jumbo v2, "UseNatAddress"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->UseNatAddress:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    .line 190
    new-instance v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    const/4 v1, 0x2

    const-string/jumbo v2, "UseStun"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->UseStun:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    .line 194
    new-instance v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    const/4 v1, 0x3

    const-string/jumbo v2, "UseIce"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->UseIce:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    .line 198
    new-instance v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    const/4 v1, 0x4

    const-string/jumbo v2, "UseUpnp"

    invoke-direct {v0, v1, v2}, Lorg/linphone/core/LinphoneCore$FirewallPolicy;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->UseUpnp:Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p1, p0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->mValue:I

    .line 206
    sget-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->values:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 207
    iput-object p2, p0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->mStringValue:Ljava/lang/String;

    .line 208
    return-void
.end method

.method public static fromInt(I)Lorg/linphone/core/LinphoneCore$FirewallPolicy;
    .locals 3

    .prologue
    .line 211
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->values:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 212
    sget-object v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->values:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;

    .line 213
    iget v2, v0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->mValue:I

    if-ne v2, p0, :cond_0

    return-object v0

    .line 211
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state not found ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->mStringValue:Ljava/lang/String;

    return-object v0
.end method

.method public value()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lorg/linphone/core/LinphoneCore$FirewallPolicy;->mValue:I

    return v0
.end method
