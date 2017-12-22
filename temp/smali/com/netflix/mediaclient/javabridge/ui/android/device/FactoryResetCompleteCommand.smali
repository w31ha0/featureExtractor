.class public Lcom/netflix/mediaclient/javabridge/ui/android/device/FactoryResetCompleteCommand;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;
.source "FactoryResetCompleteCommand.java"


# static fields
.field public static final NAME:Ljava/lang/String; = "factoryReset"

.field public static final OBJECT:Ljava/lang/String; = "nrdp.device"


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 35
    const-string/jumbo v0, "factoryReset"

    invoke-direct {p0, v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseCommandCompletedEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getObject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "nrdp.device"

    return-object v0
.end method
