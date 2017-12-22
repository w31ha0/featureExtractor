.class public final Lcom/netflix/mediaclient/service/pservice/PServiceABTest;
.super Ljava/lang/Object;
.source "PServiceABTest.java"


# static fields
.field static mPartnerDefaultExp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static mWidgetDefaultExp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$1;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->mPartnerDefaultExp:Ljava/util/Map;

    .line 26
    new-instance v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/pservice/PServiceABTest$2;-><init>()V

    sput-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->mWidgetDefaultExp:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method

.method public static getVideoCountOfListForPartnerExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 2

    .prologue
    .line 39
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppPartnerExperience:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->mPartnerDefaultExp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 39
    :pswitch_0
    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5c13d641
        :pswitch_0
    .end packed-switch
.end method

.method public static getVideoCountOfListForWidgetExp(Lcom/netflix/mediaclient/service/pservice/PDiskData$ListType;Lcom/netflix/mediaclient/service/pservice/PDiskData;)I
    .locals 2

    .prologue
    .line 47
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pservice/PDiskData;->preAppWidgetExperience:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 50
    :cond_0
    :goto_0
    sget-object v0, Lcom/netflix/mediaclient/service/pservice/PServiceABTest;->mWidgetDefaultExp:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 47
    :pswitch_0
    const-string/jumbo v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5c13d641
        :pswitch_0
    .end packed-switch
.end method
