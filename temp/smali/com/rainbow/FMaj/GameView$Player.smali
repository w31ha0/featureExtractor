.class Lcom/rainbow/FMaj/GameView$Player;
.super Ljava/lang/Object;
.source "GameView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rainbow/FMaj/GameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Player"
.end annotation


# instance fields
.field Desk:[I

.field Hand:[I

.field Pai:[I

.field bDesk:[Z

.field bShowGang:Z

.field bShowHu:Z

.field bShowPao:Z

.field bShowPeng:Z

.field myID:I

.field nDa:I

.field nDesk:I

.field nGirl:I

.field nHand:I

.field nMo:I

.field final synthetic this$0:Lcom/rainbow/FMaj/GameView;


# direct methods
.method constructor <init>(Lcom/rainbow/FMaj/GameView;)V
    .locals 2

    .prologue
    const/16 v1, 0x12

    .line 29
    iput-object p1, p0, Lcom/rainbow/FMaj/GameView$Player;->this$0:Lcom/rainbow/FMaj/GameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rainbow/FMaj/GameView$Player;->Hand:[I

    .line 38
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/rainbow/FMaj/GameView$Player;->Desk:[I

    .line 39
    const/16 v0, 0x1b

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/rainbow/FMaj/GameView$Player;->Pai:[I

    .line 40
    new-array v0, v1, [Z

    iput-object v0, p0, Lcom/rainbow/FMaj/GameView$Player;->bDesk:[Z

    return-void
.end method
