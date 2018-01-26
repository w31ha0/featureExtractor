.class public Lcom/biznessapps/fragments/single/VoiceRecordingFragment;
.super Lcom/biznessapps/fragments/CommonFragment;
.source "VoiceRecordingFragment.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AudioRecordTest"

.field private static final RECORDED_AUDIO_NAME:Ljava/lang/String; = "recorded_audio.mp3"

.field private static fileName:Ljava/lang/String;


# instance fields
.field private descriptionTextView:Landroid/widget/TextView;

.field private info:Lcom/biznessapps/model/EmailPhotoItem;

.field private playButton:Landroid/widget/Button;

.field private player:Landroid/media/MediaPlayer;

.field private recordButton:Landroid/widget/Button;

.field private recorder:Landroid/media/MediaRecorder;

.field private rootView:Landroid/view/ViewGroup;

.field private sendEmailButton:Landroid/widget/Button;

.field private startPlaying:Z

.field private startRecording:Z

.field private tabId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->fileName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Lcom/biznessapps/fragments/CommonFragment;-><init>()V

    .line 46
    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 48
    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 50
    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording:Z

    .line 52
    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    return v0
.end method

.method static synthetic access$002(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    return p1
.end method

.method static synthetic access$100(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->onPlay(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->refreshButtons()V

    return-void
.end method

.method static synthetic access$300(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording:Z

    return v0
.end method

.method static synthetic access$400(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->onRecord(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->sendEmail()V

    return-void
.end method

.method static synthetic access$600(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/fragments/single/VoiceRecordingFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emailTo"    # Ljava/lang/String;
    .param p3, "subject"    # Ljava/lang/String;
    .param p4, "emailText"    # Ljava/lang/String;
    .param p5, "fileToSend"    # Ljava/io/File;

    .prologue
    .line 254
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 256
    const-string v3, "plain/text"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v3, "android.intent.extra.EMAIL"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v2, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    invoke-static {p5}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 264
    .local v0, "fileUri":Landroid/net/Uri;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$string;->send_email:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startActivity(Landroid/content/Intent;)V

    .line 267
    return-void
.end method

.method private getButtonsBg()Landroid/graphics/drawable/GradientDrawable;
    .locals 3

    .prologue
    .line 177
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 182
    .local v0, "gradientBg":Landroid/graphics/drawable/GradientDrawable;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 183
    return-object v0

    .line 177
    :array_0
    .array-data 4
        0x7486b4
        -0x1
    .end array-data
.end method

.method private initListeners()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->playButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$1;-><init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recordButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$2;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$2;-><init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->sendEmailButton:Landroid/widget/Button;

    new-instance v1, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$3;

    invoke-direct {v1, p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$3;-><init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    return-void
.end method

.method private initViews(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "root"    # Landroid/view/ViewGroup;

    .prologue
    .line 84
    sget v1, Lcom/biznessapps/layout/R$id;->play_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->playButton:Landroid/widget/Button;

    .line 85
    sget v1, Lcom/biznessapps/layout/R$id;->record_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recordButton:Landroid/widget/Button;

    .line 86
    sget v1, Lcom/biznessapps/layout/R$id;->send_email_button:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->sendEmailButton:Landroid/widget/Button;

    .line 87
    sget v1, Lcom/biznessapps/layout/R$id;->voice_recording_description:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->descriptionTextView:Landroid/widget/TextView;

    .line 88
    sget v1, Lcom/biznessapps/layout/R$id;->voice_recording_root:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->rootView:Landroid/view/ViewGroup;

    .line 89
    sget v1, Lcom/biznessapps/layout/R$id;->voice_recording_buttons_container:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    .local v0, "buttonsContainer":Landroid/view/ViewGroup;
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->getButtonsBg()Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->playButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 92
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recordButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 93
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->sendEmailButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->setCustomButtonStyle(Landroid/widget/Button;)V

    .line 94
    return-void
.end method

.method private onPlay(Z)V
    .locals 1
    .param p1, "isPlayed"    # Z

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying()V

    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->stopPlaying()V

    .line 202
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    goto :goto_0
.end method

.method private onRecord(Z)V
    .locals 1
    .param p1, "isRecorded"    # Z

    .prologue
    .line 187
    if-nez p1, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording()V

    .line 189
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording:Z

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->stopRecording()V

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording:Z

    goto :goto_0
.end method

.method private refreshButtons()V
    .locals 2

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startPlaying:Z

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->playButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->stop:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 125
    :goto_0
    iget-boolean v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->startRecording:Z

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recordButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->stop:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 130
    :goto_1
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->playButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->play:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recordButton:Landroid/widget/Button;

    sget v1, Lcom/biznessapps/layout/R$string;->record:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private sendEmail()V
    .locals 6

    .prologue
    .line 133
    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const-string v1, "recorded_audio.mp3"

    invoke-direct {v5, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 134
    .local v5, "record":Ljava/io/File;
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    if-eqz v0, :cond_0

    if-eqz v5, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getEmail()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getSubject()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->email(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 137
    :cond_0
    return-void
.end method

.method private setBackgrounds(Landroid/app/Activity;)V
    .locals 3
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->bitmapUrl:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->bitmapUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->getImageManager()Lcom/biznessapps/utils/ImageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->bitmapUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/utils/ImageManager;->downloadBgUrl(Ljava/lang/String;Landroid/view/View;)V

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->descriptionTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v1}, Lcom/biznessapps/model/EmailPhotoItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_1
    return-void
.end method

.method private startPlaying()V
    .locals 3

    .prologue
    .line 207
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    sget-object v2, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 210
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 211
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    new-instance v2, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment$4;-><init>(Lcom/biznessapps/fragments/single/VoiceRecordingFragment;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 220
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AudioRecordTest"

    const-string v2, "prepare() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startRecording()V
    .locals 3

    .prologue
    .line 232
    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 233
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 234
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 235
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    sget-object v2, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 236
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 243
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "AudioRecordTest"

    const-string v2, "prepare() failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private stopPlaying()V
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 229
    return-void
.end method

.method private stopRecording()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 248
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method protected canUseCachedData()Z
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "VOICE_RECORDING_INFO_PROPERTY"

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/CachingManager;->getData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/biznessapps/model/EmailPhotoItem;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    .line 163
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getRequestUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 146
    const-string v0, "http://www.biznessapps.com/iphone/voice_recording.php?app_code=%s&version=4&tab_id=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 62
    sget v0, Lcom/biznessapps/layout/R$layout;->voice_recording_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recorded_audio.mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->fileName:Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->initViews(Landroid/view/ViewGroup;)V

    .line 65
    invoke-direct {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->initListeners()V

    .line 66
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->loadData()V

    .line 67
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->root:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-super {p0}, Lcom/biznessapps/fragments/CommonFragment;->onPause()V

    .line 73
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 75
    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->recorder:Landroid/media/MediaRecorder;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 78
    iget-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 79
    iput-object v1, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->player:Landroid/media/MediaPlayer;

    .line 81
    :cond_1
    return-void
.end method

.method protected preDataLoading(Landroid/app/Activity;)V
    .locals 2
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 141
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TAB_SPECIAL_ID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->tabId:Ljava/lang/String;

    .line 142
    return-void
.end method

.method protected tryParseData(Ljava/lang/String;)Z
    .locals 3
    .param p1, "dataToParse"    # Ljava/lang/String;

    .prologue
    .line 151
    invoke-static {p1}, Lcom/biznessapps/utils/JsonParserUtils;->parseEmailPhoto(Ljava/lang/String;)Lcom/biznessapps/model/EmailPhotoItem;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    .line 152
    invoke-virtual {p0}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    const-string v1, "VOICE_RECORDING_INFO_PROPERTY"

    iget-object v2, p0, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->info:Lcom/biznessapps/model/EmailPhotoItem;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/api/CachingManager;->saveData(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected updateControlsWithData(Landroid/app/Activity;)V
    .locals 0
    .param p1, "holdActivity"    # Landroid/app/Activity;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/biznessapps/fragments/single/VoiceRecordingFragment;->setBackgrounds(Landroid/app/Activity;)V

    .line 158
    return-void
.end method
