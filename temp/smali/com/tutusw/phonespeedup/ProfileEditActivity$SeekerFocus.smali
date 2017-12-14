.class Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;
.super Ljava/lang/Object;
.source "ProfileEditActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tutusw/phonespeedup/ProfileEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SeekerFocus"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;


# direct methods
.method private constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;-><init>(Lcom/tutusw/phonespeedup/ProfileEditActivity;)V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    .line 314
    move-object v0, p1

    check-cast v0, Landroid/widget/SeekBar;

    move-object v1, v0

    .line 316
    .local v1, "seekBar":Landroid/widget/SeekBar;
    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget-object v3, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v3, v3, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 317
    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_1

    .line 318
    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->maxSeek:Landroid/widget/SeekBar;

    if-ne v1, v2, :cond_0

    .line 321
    iget-object v2, p0, Lcom/tutusw/phonespeedup/ProfileEditActivity$SeekerFocus;->this$0:Lcom/tutusw/phonespeedup/ProfileEditActivity;

    iget-object v2, v2, Lcom/tutusw/phonespeedup/ProfileEditActivity;->minSeek:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method
