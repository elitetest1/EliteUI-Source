.class public Landroid/widget/TextClock;
.super Landroid/widget/TextView;
.source "TextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TextClock$ClockEventDelegate;,
        Landroid/widget/TextClock$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final whitelist DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private blacklist mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

.field private greylist-max-o mDescFormat:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mDescFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private greylist-max-o mFormat12:Ljava/lang/CharSequence;

.field private greylist-max-o mFormat24:Ljava/lang/CharSequence;

.field private greylist-max-o mFormatChangeObserver:Landroid/database/ContentObserver;

.field private greylist-max-o mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private final greylist-max-o mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRegisterActionForComplicationWidget:Z

.field private greylist-max-o mRegistered:Z

.field private blacklist mShouldChooseFormat:Z

.field private greylist-max-o mShouldRunTicker:Z

.field private greylist-max-o mShowCurrentUserTime:Z

.field private greylist-max-o mStopTicking:Z

.field private final greylist-max-o mTicker:Ljava/lang/Runnable;

.field private greylist-max-o mTime:Ljava/util/Calendar;

.field private greylist-max-o mTimeZone:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHasSeconds(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldChooseFormat(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShouldRunTicker(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStopTicking(Landroid/widget/TextClock;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTime(Landroid/widget/TextClock;)Ljava/util/Calendar;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTimeZone(Landroid/widget/TextClock;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShouldChooseFormat(Landroid/widget/TextClock;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mchooseFormat(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateTime(Landroid/widget/TextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monTimeChanged(Landroid/widget/TextClock;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Landroid/widget/TextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/TextClock$1;

    invoke-direct {p1, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object p1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p1, Landroid/widget/TextClock$2;

    invoke-direct {p1, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object p1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/widget/TextClock;->init()V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/widget/TextClock$1;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$1;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/widget/TextClock$2;

    invoke-direct {v0, p0}, Landroid/widget/TextClock$2;-><init>(Landroid/widget/TextClock;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget-object v3, Lcom/android/internal/R$styleable;->TextClock:[I

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Landroid/widget/TextClock;->saveAttributeDataForStyleable(Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    const/4 p0, 0x0

    :try_start_0
    invoke-virtual {v5, p0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 p0, 0x1

    invoke-virtual {v5, p0}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    iput-object p0, v1, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 p0, 0x2

    invoke-virtual {v5, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {v1}, Landroid/widget/TextClock;->init()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private static greylist-max-o abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1

    :cond_1
    return-object p0
.end method

.method private blacklist calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    const/16 v6, 0x7ed

    const/4 v7, 0x2

    const/16 v8, 0x13

    invoke-virtual {v2, v6, v7, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v6, 0x7ee

    const/16 v9, 0x14

    invoke-virtual {v3, v6, v7, v9}, Ljava/util/Calendar;->set(III)V

    const/16 v10, 0x7f1

    invoke-virtual {v4, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    const/16 v8, 0x7f2

    invoke-virtual {v5, v8, v7, v9}, Ljava/util/Calendar;->set(III)V

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x5

    invoke-virtual {v1, v2, v7}, Ljava/util/Calendar;->add(II)V

    move v2, v7

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {v3}, Ljava/util/Date;->getMonth()I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {v3}, Ljava/util/Date;->getDate()I

    move-result v3

    const/16 v11, 0xc

    new-array v12, v11, [I

    fill-array-data v12, :array_0

    new-array v11, v11, [I

    fill-array-data v11, :array_1

    rem-int/lit8 v13, v1, 0x4

    const/16 v14, 0x7cc

    const/16 v15, 0xba

    const/16 v10, 0x4f

    const/16 v16, 0xa

    const/16 v17, 0x1f

    const/16 v18, 0x1e

    if-eqz v13, :cond_9

    aget v4, v12, v4

    add-int/2addr v4, v3

    if-le v4, v10, :cond_6

    add-int/lit8 v10, v4, -0x4f

    if-gt v10, v15, :cond_4

    rem-int/lit8 v4, v10, 0x1f

    if-eqz v4, :cond_3

    div-int/lit8 v10, v10, 0x1f

    add-int/2addr v10, v7

    move/from16 v17, v4

    goto/16 :goto_5

    :cond_3
    div-int/lit8 v10, v10, 0x1f

    goto/16 :goto_5

    :cond_4
    add-int/lit16 v4, v4, -0x109

    rem-int/lit8 v10, v4, 0x1e

    if-eqz v10, :cond_5

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x7

    move/from16 v18, v10

    goto :goto_1

    :cond_5
    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x6

    :goto_1
    move v10, v4

    move/from16 v17, v18

    goto :goto_5

    :cond_6
    if-le v1, v14, :cond_7

    if-ne v13, v7, :cond_7

    const/16 v10, 0xb

    goto :goto_2

    :cond_7
    move/from16 v10, v16

    :goto_2
    add-int/2addr v4, v10

    rem-int/lit8 v10, v4, 0x1e

    if-eqz v10, :cond_8

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0xa

    move/from16 v18, v10

    goto :goto_1

    :cond_8
    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x9

    goto :goto_1

    :cond_9
    aget v4, v11, v4

    add-int/2addr v4, v3

    if-lt v1, v14, :cond_a

    goto :goto_3

    :cond_a
    const/16 v10, 0x50

    :goto_3
    if-le v4, v10, :cond_e

    sub-int/2addr v4, v10

    if-gt v4, v15, :cond_c

    rem-int/lit8 v10, v4, 0x1f

    if-eqz v10, :cond_b

    div-int/lit8 v4, v4, 0x1f

    add-int/2addr v4, v7

    move/from16 v17, v10

    goto :goto_4

    :cond_b
    div-int/lit8 v4, v4, 0x1f

    :goto_4
    move v10, v4

    goto :goto_5

    :cond_c
    sub-int/2addr v4, v15

    rem-int/lit8 v10, v4, 0x1e

    if-eqz v10, :cond_d

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x7

    move/from16 v18, v10

    goto :goto_1

    :cond_d
    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x6

    goto :goto_1

    :cond_e
    add-int/lit8 v4, v4, 0xa

    rem-int/lit8 v10, v4, 0x1e

    if-eqz v10, :cond_f

    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0xa

    move/from16 v18, v10

    goto :goto_1

    :cond_f
    div-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0x9

    goto :goto_1

    :goto_5
    if-nez v2, :cond_11

    if-eq v1, v6, :cond_10

    if-ne v1, v8, :cond_11

    :cond_10
    const/4 v1, 0x3

    if-ne v5, v1, :cond_11

    if-ne v3, v9, :cond_11

    add-int/lit8 v17, v17, 0x1

    :cond_11
    iget-object v1, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v0, v0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    const/4 v7, 0x0

    :goto_6
    packed-switch v10, :pswitch_data_0

    const-string v0, ""

    goto/16 :goto_7

    :pswitch_0
    if-eqz v7, :cond_13

    const-string v0, "Esfand"

    goto/16 :goto_7

    :cond_13
    const-string/jumbo v0, "\u0627\u0633??\u062f"

    goto/16 :goto_7

    :pswitch_1
    if-eqz v7, :cond_14

    const-string v0, "Bahman"

    goto/16 :goto_7

    :cond_14
    const-string/jumbo v0, "\u0628???"

    goto/16 :goto_7

    :pswitch_2
    if-eqz v7, :cond_15

    const-string v0, "Dey"

    goto :goto_7

    :cond_15
    const-string/jumbo v0, "\u062f?"

    goto :goto_7

    :pswitch_3
    if-eqz v7, :cond_16

    const-string v0, "Azar"

    goto :goto_7

    :cond_16
    const-string/jumbo v0, "\u0622\u0630\u0631"

    goto :goto_7

    :pswitch_4
    if-eqz v7, :cond_17

    const-string v0, "Aban"

    goto :goto_7

    :cond_17
    const-string/jumbo v0, "\u0622\u0628\u0627?"

    goto :goto_7

    :pswitch_5
    if-eqz v7, :cond_18

    const-string v0, "Mehr"

    goto :goto_7

    :cond_18
    const-string v0, "??\u0631"

    goto :goto_7

    :pswitch_6
    if-eqz v7, :cond_19

    const-string v0, "Shahrivar"

    goto :goto_7

    :cond_19
    const-string/jumbo v0, "\u0634?\u0631??\u0631"

    goto :goto_7

    :pswitch_7
    if-eqz v7, :cond_1a

    const-string v0, "Mordad"

    goto :goto_7

    :cond_1a
    const-string v0, "?\u0631\u062f\u0627\u062f"

    goto :goto_7

    :pswitch_8
    if-eqz v7, :cond_1b

    const-string v0, "Tir"

    goto :goto_7

    :cond_1b
    const-string/jumbo v0, "\u062a?\u0631"

    goto :goto_7

    :pswitch_9
    if-eqz v7, :cond_1c

    const-string v0, "Khordad"

    goto :goto_7

    :cond_1c
    const-string/jumbo v0, "\u062e\u0631\u062f\u0627\u062f"

    goto :goto_7

    :pswitch_a
    if-eqz v7, :cond_1d

    const-string v0, "Ordibehesht"

    goto :goto_7

    :cond_1d
    const-string/jumbo v0, "\u0627\u0631\u062f?\u0628?\u0634\u062a"

    goto :goto_7

    :pswitch_b
    if-eqz v7, :cond_1e

    const-string v0, "Farvardin"

    goto :goto_7

    :cond_1e
    const-string v0, "?\u0631?\u0631\u062f??"

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method private greylist-max-o chooseFormat()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    const-string v2, "Hm"

    invoke-direct {p0, v2}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    const-string v2, "hm"

    invoke-direct {p0, v2}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-static {v1, v2, v0}, Landroid/widget/TextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-object v1, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    iget-boolean v2, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    if-eqz v2, :cond_1

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method private greylist-max-o createTime(Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    :try_start_0
    invoke-virtual {p1}, Ljava/util/TimeZone;->toZoneId()Ljava/time/ZoneId;
    :try_end_0
    .catch Ljava/time/DateTimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    return-void
.end method

.method private blacklist getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o init()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, "hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    const-string v0, "Hm"

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->getBestDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_1
    new-instance v0, Landroid/widget/TextClock$ClockEventDelegate;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    return-void
.end method

.method private greylist onTimeChanged()V
    .locals 3

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "per"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->calcPersiCalendar(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Landroid/widget/TextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Landroid/widget/TextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private greylist-max-o registerObserver()V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/TextClock$FormatChangeObserver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/widget/TextClock$FormatChangeObserver;-><init>(Landroid/widget/TextClock;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    :goto_0
    iget-object v1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object p0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, p0, v0}, Landroid/widget/TextClock$ClockEventDelegate;->registerFormatChangeObserver(Landroid/database/ContentObserver;I)V

    :cond_2
    return-void
.end method

.method private greylist-max-o unregisterObserver()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextClock;->mFormatChangeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    invoke-virtual {p0, v0}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterFormatChangeObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist disableClockTick()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mStopTicking:Z

    return-void
.end method

.method protected greylist-max-o encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/TextView;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat12Hour()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v2, "format12Hour"

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat24Hour()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v2, "format24Hour"

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string v0, "format"

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "hasSeconds"

    iget-boolean p0, p0, Landroid/widget/TextClock;->mHasSeconds:Z

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    return-void
.end method

.method public greylist-max-r getFormat()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mFormat:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getFormat12Hour()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object p0, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getFormat24Hour()Ljava/lang/CharSequence;
    .locals 0
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    iget-object p0, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist getTimeZone()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    return-object p0
.end method

.method public greylist hidden_semRegisterActionForComplicationWidget(Z)V
    .locals 2
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    iget-boolean p1, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object p1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v0, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->registerComplicationTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_1
    return-void
.end method

.method public whitelist is24HourModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-static {p0, v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextClock;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method protected whitelist onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegisterActionForComplicationWidget:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerComplicationTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0}, Landroid/widget/TextClock;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextClock$ClockEventDelegate;->registerTimeChangeReceiver(Landroid/content/BroadcastReceiver;Landroid/os/Handler;)V

    :goto_0
    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    iget-object v0, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected whitelist onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    iget-object v1, p0, Landroid/widget/TextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/widget/TextClock$ClockEventDelegate;->unregisterTimeChangeReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    :cond_0
    return-void
.end method

.method public whitelist onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-boolean p1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldChooseFormat:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    :cond_0
    iget-object p0, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iput-boolean v1, p0, Landroid/widget/TextClock;->mShouldRunTicker:Z

    iget-object p1, p0, Landroid/widget/TextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/TextClock;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public whitelist refreshTime()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-virtual {p0}, Landroid/widget/TextClock;->invalidate()V

    return-void
.end method

.method public blacklist setClockEventDelegate(Landroid/widget/TextClock$ClockEventDelegate;)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/TextClock;->mRegistered:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Clock events already registered"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iput-object p1, p0, Landroid/widget/TextClock;->mClockEventDelegate:Landroid/widget/TextClock$ClockEventDelegate;

    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public greylist-max-o setContentDescriptionFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TextClock;->mDescFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public whitelist setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public whitelist setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method

.method public greylist-max-o setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/TextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Landroid/widget/TextClock;->chooseFormat()V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    invoke-direct {p0}, Landroid/widget/TextClock;->unregisterObserver()V

    invoke-direct {p0}, Landroid/widget/TextClock;->registerObserver()V

    return-void
.end method

.method public whitelist setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Landroid/widget/TextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Landroid/widget/TextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/widget/TextClock;->onTimeChanged()V

    return-void
.end method
