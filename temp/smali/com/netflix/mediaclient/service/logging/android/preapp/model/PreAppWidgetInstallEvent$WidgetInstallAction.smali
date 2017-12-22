.class public final enum Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;
.super Ljava/lang/Enum;
.source "PreAppWidgetInstallEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

.field public static final enum ADD:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

.field public static final enum DELETE:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;


# instance fields
.field private value:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    const-string/jumbo v1, "ADD"

    const-string/jumbo v2, "androidAddWidget"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->ADD:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    const-string/jumbo v1, "DELETE"

    const-string/jumbo v2, "androidDeleteWidget"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->DELETE:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    const-string/jumbo v1, "UNKNOWN"

    const-string/jumbo v2, ""

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->UNKNOWN:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->ADD:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->DELETE:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->UNKNOWN:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->$VALUES:[Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->value:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->values()[Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 55
    iget-object v4, v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->value:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    :goto_1
    return-object v0

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 59
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->UNKNOWN:Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->$VALUES:[Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/android/preapp/model/PreAppWidgetInstallEvent$WidgetInstallAction;->value:Ljava/lang/String;

    return-object v0
.end method
