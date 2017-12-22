.class Lcom/netflix/mediaclient/ui/voip/DialerScreen;
.super Ljava/lang/Object;
.source "DialerScreen.java"


# static fields
.field private static final DELAY_POST:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "VoipActivity"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mButtonSelectedColor:I

.field private mButtons:[Landroid/view/View;

.field private final mButtonsContainer:Landroid/view/View;

.field private final mCallStatus1:Landroid/widget/TextView;

.field private final mCallStatus2:Landroid/widget/TextView;

.field private mConnected:Z

.field private final mDialerContainer:Landroid/view/View;

.field private final mDialpad:Landroid/widget/TableLayout;

.field private final mDialpadIcon:Landroid/widget/ImageView;

.field private final mDialpadIconLabel:Landroid/view/View;

.field private final mDialpadStatus:Landroid/widget/TextView;

.field private mDisposables:Lio/reactivex/disposables/CompositeDisposable;

.field private final mFab:Landroid/support/design/widget/FloatingActionButton;

.field private mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

.field private final mHandler:Landroid/os/Handler;

.field private final mLoadingView:Landroid/view/View;

.field private final mMicIcon:Landroid/widget/ImageView;

.field private mMuted:Z

.field private mNumberButtonColor:I

.field private final mOnTouchListener:Landroid/view/View$OnTouchListener;

.field private mOtherButtonColor:I

.field private final mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

.field private mRippleAnimationInMs:I

.field private final mSpeakerButtonContainer:Landroid/view/View;

.field private final mSpeakerIcon:Landroid/widget/ImageView;

.field private final mSpeakerLabel:Landroid/widget/TextView;

.field private mSpeakerOn:Z

.field private final mStatusContainer:Landroid/view/View;

.field private final mTimer:Landroid/widget/TextView;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private final onEverySecond:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    const-wide/16 v8, 0x12c

    const v6, 0x7f0f0049

    const v5, 0x7f0f0046

    const v4, 0x7f0f0045

    const/4 v1, 0x0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    .line 118
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    .line 270
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$3;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    .line 704
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$8;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    .line 130
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c001e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    .line 133
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100163

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100164

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100140

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 139
    invoke-virtual {v2, v8, v9, v3}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 140
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$1;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    .line 141
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 138
    invoke-virtual {v0, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100141

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerLabel:Landroid/widget/TextView;

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerLabel:Landroid/widget/TextView;

    invoke-static {v2}, Lcom/jakewharton/rxbinding2/view/RxView;->clicks(Landroid/view/View;)Lio/reactivex/Observable;

    move-result-object v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 150
    invoke-virtual {v2, v8, v9, v3}, Lio/reactivex/Observable;->debounce(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v2

    .line 151
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$2;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    .line 152
    invoke-virtual {v2, v3}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v2

    .line 149
    invoke-virtual {v0, v2}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100166

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    .line 161
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100143

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    .line 162
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100146

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    .line 163
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100147

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    .line 165
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 167
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f10013b

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f10013a

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    .line 169
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f10013c

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    .line 170
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100165

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f10013f

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100148

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/FloatingActionButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFab:Landroid/support/design/widget/FloatingActionButton;

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f10014a

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpad:Landroid/widget/TableLayout;

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f100149

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadStatus:Landroid/widget/TextView;

    .line 176
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->showDialpadByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    :cond_0
    :try_start_0
    new-instance v0, Landroid/media/ToneGenerator;

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :goto_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupButtons()V

    .line 188
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    const-string/jumbo v2, "audio"

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 189
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isSpeakerOn()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isMicrophoneMuted()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 191
    new-instance v0, Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-direct {v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    .line 193
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    .line 194
    invoke-virtual {p1, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    .line 195
    invoke-virtual {p1, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    .line 196
    invoke-virtual {p1, v6}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    .line 203
    :goto_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setupSpeaker()V

    .line 204
    return-void

    .line 182
    :catch_0
    move-exception v0

    .line 183
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Failed to initiate tone generator"

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v1

    .line 190
    goto :goto_2

    .line 198
    :cond_3
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    .line 199
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    .line 200
    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleSpeaker()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setProgress()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;I)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->repostOnEverySecondRunnable(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/view/View;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonsContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    return v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method private cancelCall()V
    .locals 2

    .prologue
    .line 633
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Cancel call by user"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_1

    .line 635
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->cancelCall()V

    .line 636
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->terminate()Z

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callEnded(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;)V

    .line 641
    :cond_1
    return-void
.end method

.method private static convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 780
    if-nez p0, :cond_0

    .line 781
    const/4 v0, 0x0

    .line 785
    :goto_0
    return-object v0

    .line 783
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 784
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private executeAfterRippleAnimation(Ljava/lang/Runnable;I)V
    .locals 4

    .prologue
    .line 529
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 534
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    return-object v0
.end method

.method private handleButtonTounch(ICZI)V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 337
    if-eqz p3, :cond_2

    .line 341
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->startDTMF(C)V

    .line 342
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 343
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1, p4}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 357
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateDiaPadState(ICZ)V

    .line 359
    if-nez v0, :cond_1

    .line 360
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Button label not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    return-void

    .line 350
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->stopDTMF()V

    .line 351
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0
.end method

.method private handleButtonTounch(Landroid/view/View;Z)V
    .locals 3

    .prologue
    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 331
    :goto_0
    :pswitch_0
    return-void

    .line 291
    :pswitch_1
    const v0, 0x7f10014c

    const/16 v1, 0x31

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 294
    :pswitch_2
    const v0, 0x7f10014e

    const/16 v1, 0x32

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 297
    :pswitch_3
    const v0, 0x7f100150

    const/16 v1, 0x33

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 300
    :pswitch_4
    const v0, 0x7f100152

    const/16 v1, 0x34

    const/4 v2, 0x4

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 303
    :pswitch_5
    const v0, 0x7f100154

    const/16 v1, 0x35

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 306
    :pswitch_6
    const v0, 0x7f100156

    const/16 v1, 0x36

    const/4 v2, 0x6

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 309
    :pswitch_7
    const v0, 0x7f100158

    const/16 v1, 0x37

    const/4 v2, 0x7

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 312
    :pswitch_8
    const v0, 0x7f10015a

    const/16 v1, 0x38

    const/16 v2, 0x8

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 315
    :pswitch_9
    const v0, 0x7f10015c

    const/16 v1, 0x39

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 318
    :pswitch_a
    const v0, 0x7f100160

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 321
    :pswitch_b
    const v0, 0x7f10015e

    const/16 v1, 0x2a

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 324
    :pswitch_c
    const v0, 0x7f100162

    const/16 v1, 0x23

    const/16 v2, 0xb

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->handleButtonTounch(ICZI)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x7f10014c
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method private repostOnEverySecondRunnable(I)V
    .locals 4

    .prologue
    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 736
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 737
    return-void
.end method

.method private restartTimer()V
    .locals 0

    .prologue
    .line 730
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    .line 731
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    .line 732
    return-void
.end method

.method private setButtonsStateToEnabled(Z)V
    .locals 5

    .prologue
    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 242
    :cond_0
    return-void

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 239
    invoke-virtual {v4, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 240
    if-eqz p1, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 238
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 240
    :cond_2
    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_1
.end method

.method private setDialPadColor(II)V
    .locals 1

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 397
    :cond_0
    return-void
.end method

.method private setEnableDialpad(Z)V
    .locals 3

    .prologue
    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIcon:Landroid/widget/ImageView;

    const v2, 0x7f0200e0

    invoke-static {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V

    .line 213
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadIconLabel:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 214
    return-void
.end method

.method private static setImageViewEnabled(Landroid/content/Context;ZLandroid/widget/ImageView;I)V
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 766
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 767
    if-eqz p1, :cond_0

    .line 768
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 769
    return-void

    .line 767
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->convertDrawableToGrayScale(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private declared-synchronized setProgress()V
    .locals 6

    .prologue
    .line 741
    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->getCallStartTimeInMs()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 746
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v2, v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v1

    const v2, 0x7f0900e8

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mFormatter:Lcom/netflix/mediaclient/util/TimeFormatterHelper;

    invoke-virtual {v5, v0}, Lcom/netflix/mediaclient/util/TimeFormatterHelper;->getStringForMs(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 749
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialpadStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 750
    monitor-exit p0

    return-void

    .line 741
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setupButtons()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 247
    const/16 v2, 0xc

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    .line 248
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f100160

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 249
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v4, 0x7f10014c

    invoke-virtual {v3, v4}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v0

    .line 250
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f10014e

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 251
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100150

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 252
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100152

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 253
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100154

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 254
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x6

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100156

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 255
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/4 v3, 0x7

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100158

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 256
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v3, 0x8

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f10015a

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 257
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v3, 0x9

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f10015c

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 258
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f10015e

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 259
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    const/16 v3, 0xb

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v5, 0x7f100162

    invoke-virtual {v4, v5}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v2, v3

    .line 261
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtons:[Landroid/view/View;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 262
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOnTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 261
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v2

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    :goto_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 267
    return-void

    :cond_1
    move v0, v1

    .line 265
    goto :goto_1
.end method

.method private setupSpeaker()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Tablet: hide speaker option"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_0
    return-void
.end method

.method private showDialpadByDefault()Z
    .locals 1

    .prologue
    .line 492
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 493
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 494
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 495
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 496
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->getActivity()Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->getVoipConfiguration()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipConfiguration;->isOpenDialpadByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    .line 496
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startTimer()V
    .locals 2

    .prologue
    .line 725
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Start timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 727
    return-void
.end method

.method private stopTimer()V
    .locals 2

    .prologue
    .line 720
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Stop timer..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->onEverySecond:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 722
    return-void
.end method

.method private toggleDialpad()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 646
    :goto_0
    if-eqz v0, :cond_1

    .line 647
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was visible, remove it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 650
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 658
    :goto_1
    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$7;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;Z)V

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    .line 670
    return-void

    :cond_0
    move v0, v1

    .line 645
    goto :goto_0

    .line 653
    :cond_1
    const-string/jumbo v2, "VoipActivity"

    const-string/jumbo v3, "Dialpad was NOT visible, show it!"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private toggleMic()V
    .locals 2

    .prologue
    .line 673
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-eqz v0, :cond_1

    .line 674
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Unmute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 679
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 680
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setMicrophoneMute(Z)V

    .line 683
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    .line 684
    return-void

    .line 676
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Mute"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 678
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private toggleSpeaker()V
    .locals 2

    .prologue
    .line 687
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-eqz v0, :cond_1

    .line 688
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from on to off"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :goto_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 694
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IVoip;->setSpeakerOn(Z)V

    .line 697
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    .line 698
    return-void

    .line 690
    :cond_1
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Set speaker from off to on"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateCallStatus()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 463
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Update call status..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_1

    .line 467
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0900e5

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 474
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->showDialpadByDefault()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleDialpad()V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-direct {p0, v3}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 480
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0900e6

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mCallStatus2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const v2, 0x7f0900e7

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDiaPadState(ICZ)V
    .locals 2

    .prologue
    .line 372
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 383
    :goto_0
    return-void

    .line 375
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Sets color to label for pre L devices..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    if-eqz p3, :cond_1

    .line 379
    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mButtonSelectedColor:I

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setDialPadColor(II)V

    goto :goto_0

    .line 381
    :cond_1
    invoke-static {p2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mNumberButtonColor:I

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setDialPadColor(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOtherButtonColor:I

    goto :goto_1
.end method

.method private updateMic()V
    .locals 2

    .prologue
    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMicIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 519
    :goto_0
    return-void

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isMicrophoneMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mMuted:Z

    .line 507
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$5;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 505
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateSpeaker()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->isSpeakerOn()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mSpeakerOn:Z

    .line 549
    new-instance v0, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$6;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    iget v1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mRippleAnimationInMs:I

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->executeAfterRippleAnimation(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 547
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    goto :goto_1
.end method


# virtual methods
.method public callConnected()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 580
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is connected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 582
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    .line 583
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 584
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->startTimer()V

    .line 585
    return-void
.end method

.method public callEnded()V
    .locals 1

    .prologue
    .line 592
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 593
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    .line 594
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->stopTimer()V

    .line 595
    return-void
.end method

.method public callRinging()V
    .locals 2

    .prologue
    .line 588
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call is ringing"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDisposables:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 208
    return-void
.end method

.method initUi()V
    .locals 2

    .prologue
    .line 401
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen$4;-><init>(Lcom/netflix/mediaclient/ui/voip/DialerScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 444
    return-void
.end method

.method public performAction(Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 605
    if-nez p1, :cond_0

    .line 606
    const-string/jumbo v1, "VoipActivity"

    const-string/jumbo v2, "DialScreen:: null view? This should never happen!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return v0

    .line 610
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 626
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 613
    :pswitch_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleMic()V

    goto :goto_0

    .line 616
    :pswitch_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->cancelCall()V

    goto :goto_0

    .line 620
    :pswitch_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->toggleDialpad()V

    goto :goto_0

    .line 610
    :pswitch_data_0
    .packed-switch 0x7f100143
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public startCall()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 564
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Call started!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->update(Z)V

    .line 566
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 567
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->getVoip()Lcom/netflix/mediaclient/servicemgr/IVoip;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IVoip;->dial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Success on starting call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mDialerContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mStatusContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 576
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setEnableDialpad(Z)V

    .line 577
    return-void

    .line 570
    :cond_0
    const-string/jumbo v0, "VoipActivity"

    const-string/jumbo v1, "Failed to start call"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mOwner:Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v1}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->callFailed(Lcom/netflix/mediaclient/servicemgr/IVoip$Call;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method update(Z)V
    .locals 1

    .prologue
    .line 451
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateMic()V

    .line 452
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateSpeaker()V

    .line 453
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    .line 454
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->updateCallStatus()V

    .line 455
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->mConnected:Z

    if-eqz v0, :cond_0

    .line 456
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->restartTimer()V

    .line 458
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/voip/DialerScreen;->setButtonsStateToEnabled(Z)V

    .line 459
    return-void
.end method
