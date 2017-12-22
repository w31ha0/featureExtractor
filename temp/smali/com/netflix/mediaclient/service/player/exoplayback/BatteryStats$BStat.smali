.class Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;
.super Ljava/lang/Object;
.source "BatteryStats.java"


# instance fields
.field public health:I

.field public level:I

.field public plugged:I

.field public status:I

.field public temperature:I

.field final synthetic this$0:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

.field public voltage:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;)V
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->this$0:Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 53
    :try_start_0
    const-string/jumbo v0, "level"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->level:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string/jumbo v0, "health"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->health:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string/jumbo v0, "plugged"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->plugged:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string/jumbo v0, "status"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->status:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 57
    const-string/jumbo v0, "temperature"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->temperature:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 58
    const-string/jumbo v0, "voltage"

    iget v2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->voltage:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-object v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public setStat(IIIIII)V
    .locals 0

    .prologue
    .line 42
    iput p1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->level:I

    .line 43
    iput p2, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->health:I

    .line 44
    iput p3, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->plugged:I

    .line 45
    iput p4, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->status:I

    .line 46
    iput p5, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->temperature:I

    .line 47
    iput p6, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->voltage:I

    .line 48
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BStat{level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", health="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->health:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", plugged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->plugged:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->temperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", voltage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/netflix/mediaclient/service/player/exoplayback/BatteryStats$BStat;->voltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
