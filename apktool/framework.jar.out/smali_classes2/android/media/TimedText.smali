.class public final Landroid/media/TimedText;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/TimedText$Justification;,
        Landroid/media/TimedText$Style;,
        Landroid/media/TimedText$Font;,
        Landroid/media/TimedText$CharPos;,
        Landroid/media/TimedText$Karaoke;,
        Landroid/media/TimedText$HyperText;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIRST_PRIVATE_KEY:I = 0x65

.field private static final greylist-max-o FIRST_PUBLIC_KEY:I = 0x1

.field private static final greylist-max-o KEY_BACKGROUND_COLOR_RGBA:I = 0x3

.field private static final greylist-max-o KEY_DISPLAY_FLAGS:I = 0x1

.field private static final greylist-max-o KEY_END_CHAR:I = 0x68

.field private static final greylist-max-o KEY_FONT_ID:I = 0x69

.field private static final greylist-max-o KEY_FONT_SIZE:I = 0x6a

.field private static final greylist-max-o KEY_GLOBAL_SETTING:I = 0x65

.field private static final greylist-max-o KEY_HIGHLIGHT_COLOR_RGBA:I = 0x4

.field private static final greylist-max-o KEY_LOCAL_SETTING:I = 0x66

.field private static final greylist-max-o KEY_SCROLL_DELAY:I = 0x5

.field private static final greylist-max-o KEY_START_CHAR:I = 0x67

.field private static final greylist-max-o KEY_START_TIME:I = 0x7

.field private static final greylist-max-o KEY_STRUCT_BLINKING_TEXT_LIST:I = 0x8

.field private static final greylist-max-o KEY_STRUCT_FONT_LIST:I = 0x9

.field private static final greylist-max-o KEY_STRUCT_HIGHLIGHT_LIST:I = 0xa

.field private static final greylist-max-o KEY_STRUCT_HYPER_TEXT_LIST:I = 0xb

.field private static final greylist-max-o KEY_STRUCT_JUSTIFICATION:I = 0xf

.field private static final greylist-max-o KEY_STRUCT_KARAOKE_LIST:I = 0xc

.field private static final greylist-max-o KEY_STRUCT_STYLE_LIST:I = 0xd

.field private static final greylist-max-o KEY_STRUCT_TEXT:I = 0x10

.field private static final greylist-max-o KEY_STRUCT_TEXT_POS:I = 0xe

.field private static final greylist-max-o KEY_STYLE_FLAGS:I = 0x2

.field private static final greylist-max-o KEY_TEXT_COLOR_RGBA:I = 0x6b

.field private static final greylist-max-o KEY_WRAP_TEXT:I = 0x6

.field private static final greylist-max-o LAST_PRIVATE_KEY:I = 0x6b

.field private static final greylist-max-o LAST_PUBLIC_KEY:I = 0x10

.field public static final blacklist SEM_KEY_START_TIME:I = 0xbc8

.field public static final whitelist SEM_KEY_TEXT_INDEX:I = 0xbc9

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TimedText"


# instance fields
.field private greylist-max-o mBackgroundColorRGBA:I

.field private greylist-max-o mBlinkingPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDisplayFlags:I

.field private greylist-max-o mFontList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Font;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHighlightColorRGBA:I

.field private greylist-max-o mHighlightPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$CharPos;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHyperTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$HyperText;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mJustification:Landroid/media/TimedText$Justification;

.field private greylist-max-o mKaraokeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Karaoke;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mKeyObjectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mParcel:Landroid/os/Parcel;

.field private greylist-max-o mScrollDelay:I

.field private greylist-max-o mStyleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/TimedText$Style;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mTextBounds:Landroid/graphics/Rect;

.field private greylist-max-o mTextChars:Ljava/lang/String;

.field private greylist-max-o mWrapText:I


# direct methods
.method public constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    const/4 v1, -0x1

    iput v1, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v1, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v1, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v1, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v1, p0, Landroid/media/TimedText;->mWrapText:I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object v1, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    iput-object v1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object p1

    iget-object v1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    iget-object p1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-direct {p0, p1}, Landroid/media/TimedText;->parseParcel(Landroid/os/Parcel;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const-string p0, "TimedText"

    const-string p1, "parseParcel() fails"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText;->mDisplayFlags:I

    iput v0, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    iput v0, p0, Landroid/media/TimedText;->mScrollDelay:I

    iput v0, p0, Landroid/media/TimedText;->mWrapText:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    iput-object p1, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    iput-object p2, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-void
.end method

.method private greylist-max-o containsKey(I)Z
    .locals 1

    invoke-direct {p0, p1}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-r getObject(I)Ljava/lang/Object;
    .locals 2

    invoke-direct {p0, p1}, Landroid/media/TimedText;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid key: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private greylist-max-o isValidKey(I)Z
    .locals 1

    const/16 p0, 0xbc9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    if-lt p1, v0, :cond_1

    const/16 p0, 0x10

    if-le p1, p0, :cond_2

    :cond_1
    const/16 p0, 0x65

    if-lt p1, p0, :cond_3

    const/16 p0, 0x6b

    if-le p1, p0, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o keySet()Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized greylist-max-o parseParcel(Landroid/os/Parcel;)Z
    .locals 8

    const-string v0, "Invalid timed text key found: "

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/16 v3, 0xbc9

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iget-object v4, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    :cond_1
    const/16 v3, 0x66

    const/4 v4, 0x0

    if-ne v2, v3, :cond_6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iget-object v3, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    monitor-exit p0

    return v1

    :cond_3
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    if-eqz v0, :cond_5

    array-length v2, v0

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v2, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    iput-object v4, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const/16 v3, 0x65

    if-eq v2, v3, :cond_7

    const-string p1, "TimedText"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v1

    :cond_7
    :goto_1
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v0

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/media/TimedText;->isValidKey(I)Z

    move-result v2

    if-nez v2, :cond_8

    const-string p1, "TimedText"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid timed text key found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return v1

    :cond_8
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    new-instance v5, Landroid/media/TimedText$Justification;

    invoke-direct {v5, v2, v3}, Landroid/media/TimedText$Justification;-><init>(II)V

    iput-object v5, p0, Landroid/media/TimedText;->mJustification:Landroid/media/TimedText$Justification;

    goto/16 :goto_3

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    goto :goto_2

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readStyle(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    goto :goto_3

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readKaraoke(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    goto :goto_3

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHyperText(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    goto :goto_3

    :pswitch_6
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readHighlight(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    goto :goto_3

    :pswitch_7
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readFont(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    goto :goto_3

    :pswitch_8
    invoke-direct {p0, p1}, Landroid/media/TimedText;->readBlinkingText(Landroid/os/Parcel;)V

    iget-object v5, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    goto :goto_3

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TimedText;->mWrapText:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TimedText;->mScrollDelay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TimedText;->mHighlightColorRGBA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TimedText;->mBackgroundColorRGBA:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/media/TimedText;->mDisplayFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_3

    :goto_2
    move-object v5, v4

    :goto_3
    if-eqz v5, :cond_7

    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    iget-object v2, p0, Landroid/media/TimedText;->mKeyObjectMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_a
    iget-object p1, p0, Landroid/media/TimedText;->mParcel:Landroid/os/Parcel;

    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o readBlinkingText(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v0, p1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object p1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroid/media/TimedText;->mBlinkingPosList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o readFont(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v5, v1, v4}, Ljava/lang/String;-><init>([BII)V

    new-instance v4, Landroid/media/TimedText$Font;

    invoke-direct {v4, v3, v6}, Landroid/media/TimedText$Font;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    :cond_0
    iget-object v3, p0, Landroid/media/TimedText;->mFontList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o readHighlight(Landroid/os/Parcel;)V
    .locals 2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    new-instance v1, Landroid/media/TimedText$CharPos;

    invoke-direct {v1, v0, p1}, Landroid/media/TimedText$CharPos;-><init>(II)V

    iget-object p1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroid/media/TimedText;->mHighlightPosList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o readHyperText(Landroid/os/Parcel;)V
    .locals 6

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, v5, v2}, Ljava/lang/String;-><init>([BII)V

    new-instance p1, Landroid/media/TimedText$HyperText;

    invoke-direct {p1, v0, v1, v4, v3}, Landroid/media/TimedText$HyperText;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    :cond_0
    iget-object p0, p0, Landroid/media/TimedText;->mHyperTextList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private greylist-max-o readKaraoke(Landroid/os/Parcel;)V
    .locals 7

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    new-instance v6, Landroid/media/TimedText$Karaoke;

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/media/TimedText$Karaoke;-><init>(IIII)V

    iget-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    :cond_0
    iget-object v2, p0, Landroid/media/TimedText;->mKaraokeList:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private greylist-max-o readStyle(Landroid/os/Parcel;)V
    .locals 13

    const/4 v0, 0x0

    const/4 v1, -0x1

    move v6, v0

    move v7, v6

    move v8, v7

    move v3, v1

    move v4, v3

    move v5, v4

    move v9, v5

    move v10, v9

    move v1, v8

    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v2, v11, :cond_0

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    move v1, v12

    goto :goto_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v10, v2

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v9, v2

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v5, v2

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v4, v2

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    rem-int/lit8 v6, v2, 0x2

    if-ne v6, v12, :cond_1

    move v6, v12

    goto :goto_1

    :cond_1
    move v6, v0

    :goto_1
    rem-int/lit8 v7, v2, 0x4

    if-lt v7, v11, :cond_2

    move v7, v12

    goto :goto_2

    :cond_2
    move v7, v0

    :goto_2
    div-int/lit8 v2, v2, 0x4

    if-ne v2, v12, :cond_3

    move v8, v12

    goto :goto_0

    :cond_3
    move v8, v0

    goto :goto_0

    :cond_4
    new-instance v2, Landroid/media/TimedText$Style;

    invoke-direct/range {v2 .. v10}, Landroid/media/TimedText$Style;-><init>(IIIZZZII)V

    iget-object p1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    if-nez p1, :cond_5

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    :cond_5
    iget-object p0, p0, Landroid/media/TimedText;->mStyleList:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public whitelist getBounds()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Landroid/media/TimedText;->mTextBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public whitelist getText()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/media/TimedText;->mTextChars:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist semGetObject(I)Ljava/lang/Object;
    .locals 1

    const/16 v0, 0xbc8

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    invoke-direct {p0, p1}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/TimedText;->getObject(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
