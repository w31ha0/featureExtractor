.class public final enum Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
.super Ljava/lang/Enum;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum BladerunnerError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum ManifestError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

.field public static final enum NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "NetworkError"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 38
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "HttpError"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 39
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "MslError"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 40
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "DrmError"

    invoke-direct {v0, v1, v6}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "BladerunnerError"

    invoke-direct {v0, v1, v7}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->BladerunnerError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    const-string/jumbo v1, "ManifestError"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ManifestError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    .line 36
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->NetworkError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->HttpError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->MslError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->DrmError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->BladerunnerError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->ManifestError:Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->$VALUES:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->$VALUES:[Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/android/app/Status$ErrorGroup;

    return-object v0
.end method
