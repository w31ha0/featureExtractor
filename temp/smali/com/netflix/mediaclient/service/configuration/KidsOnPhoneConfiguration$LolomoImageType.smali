.class public final enum Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;
.super Ljava/lang/Enum;
.source "KidsOnPhoneConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

.field public static final enum HORIZONTAL:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "horizontal"
    .end annotation
.end field

.field public static final enum ONE_TO_ONE:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "one2one"
    .end annotation
.end field


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 28
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    const-string/jumbo v1, "HORIZONTAL"

    const-string/jumbo v2, "horizontal"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->HORIZONTAL:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    .line 30
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    const-string/jumbo v1, "ONE_TO_ONE"

    const-string/jumbo v2, "one2one"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->ONE_TO_ONE:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->HORIZONTAL:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->ONE_TO_ONE:Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->value:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/KidsOnPhoneConfiguration$LolomoImageType;->value:Ljava/lang/String;

    return-object v0
.end method
