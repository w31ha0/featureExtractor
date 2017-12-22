.class Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KongGearSelectionScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen$3;->this$0:Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/kong/postplay/KongGearSelectionScreen;->playGear1Sound()V

    .line 364
    return-void
.end method
