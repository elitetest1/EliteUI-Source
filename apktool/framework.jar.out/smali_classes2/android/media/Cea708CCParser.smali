.class Landroid/media/Cea708CCParser;
.super Ljava/lang/Object;
.source "Cea708CaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/Cea708CCParser$DisplayListener;,
        Landroid/media/Cea708CCParser$CaptionEvent;,
        Landroid/media/Cea708CCParser$Const;,
        Landroid/media/Cea708CCParser$CaptionPenAttr;,
        Landroid/media/Cea708CCParser$CaptionColor;,
        Landroid/media/Cea708CCParser$CaptionPenColor;,
        Landroid/media/Cea708CCParser$CaptionPenLocation;,
        Landroid/media/Cea708CCParser$CaptionWindowAttr;,
        Landroid/media/Cea708CCParser$CaptionWindow;
    }
.end annotation


# static fields
.field public static final greylist-max-o CAPTION_EMIT_TYPE_BUFFER:I = 0x1

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_CLW:I = 0x4

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_CWX:I = 0x3

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DFX:I = 0x10

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLC:I = 0xa

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLW:I = 0x8

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DLY:I = 0x9

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_DSW:I = 0x5

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_HDW:I = 0x6

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_RST:I = 0xb

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPA:I = 0xc

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPC:I = 0xd

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SPL:I = 0xe

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_SWA:I = 0xf

.field public static final greylist-max-o CAPTION_EMIT_TYPE_COMMAND_TGW:I = 0x7

.field public static final greylist-max-o CAPTION_EMIT_TYPE_CONTROL:I = 0x2

.field private static final greylist-max-o DEBUG:Z = false

.field private static final greylist-max-o MUSIC_NOTE_CHAR:Ljava/lang/String;

.field private static final greylist-max-o TAG:Ljava/lang/String; = "Cea708CCParser"


# instance fields
.field private final greylist-max-o mBuffer:Ljava/lang/StringBuffer;

.field private greylist-max-o mCommand:I

.field private greylist-max-o mListener:Landroid/media/Cea708CCParser$DisplayListener;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const-string v1, "\u266b"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    sput-object v0, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/media/Cea708CCParser$DisplayListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    new-instance v0, Landroid/media/Cea708CCParser$1;

    invoke-direct {v0, p0}, Landroid/media/Cea708CCParser$1;-><init>(Landroid/media/Cea708CCParser;)V

    iput-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    if-eqz p1, :cond_0

    iput-object p1, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    :cond_0
    return-void
.end method

.method private greylist-max-o emitCaptionBuffer()V
    .locals 4

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget-object v2, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_0
    return-void
.end method

.method private greylist-max-o emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V
    .locals 0

    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    iget-object p0, p0, Landroid/media/Cea708CCParser;->mListener:Landroid/media/Cea708CCParser$DisplayListener;

    invoke-interface {p0, p1}, Landroid/media/Cea708CCParser$DisplayListener;->emitEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return-void
.end method

.method private greylist-max-o parseC0([BI)I
    .locals 4

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v1, 0x2

    const/16 v2, 0x18

    if-lt v0, v2, :cond_2

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_2

    if-ne v0, v2, :cond_1

    :try_start_0
    aget-byte v0, p1, p2

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    add-int/lit8 v0, p2, 0x1

    aget-byte p1, p1, v0

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v2, p2, 0x2

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const-string v2, "EUC-KR"

    invoke-direct {v0, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Cea708CCParser"

    const-string v0, "P16 Code - Could not find supported encoding"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    add-int/2addr p2, v1

    return p2

    :cond_2
    const/16 p1, 0x10

    if-lt v0, p1, :cond_3

    const/16 p1, 0x17

    if-gt v0, p1, :cond_3

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_3
    const/4 p1, 0x3

    if-eq v0, p1, :cond_5

    const/16 p1, 0x8

    if-eq v0, p1, :cond_4

    packed-switch v0, :pswitch_data_0

    return p2

    :pswitch_0
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    :pswitch_1
    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2

    :pswitch_2
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    :cond_4
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    :cond_5
    new-instance p1, Landroid/media/Cea708CCParser$CaptionEvent;

    iget v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {p0, p1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private greylist-max-o parseC1([BI)I
    .locals 25

    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/Cea708CCParser;->mCommand:I

    const/4 v2, 0x0

    const/16 v3, 0xf

    const/4 v4, 0x5

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return p2

    :pswitch_1
    add-int/lit16 v12, v1, -0x98

    aget-byte v1, p1, p2

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_0

    move v13, v10

    goto :goto_0

    :cond_0
    move v13, v7

    :goto_0
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_1

    move v14, v10

    goto :goto_1

    :cond_1
    move v14, v7

    :goto_1
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_2

    move v15, v10

    goto :goto_2

    :cond_2
    move v15, v7

    :goto_2
    and-int/lit8 v16, v1, 0x7

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    move/from16 v17, v10

    goto :goto_3

    :cond_3
    move/from16 v17, v7

    :goto_3
    and-int/lit8 v18, v1, 0x7f

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v4, v2, 0xf0

    shr-int/lit8 v20, v4, 0x4

    and-int/lit8 v21, v2, 0xf

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    and-int/lit8 v22, v2, 0x3f

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    and-int/lit8 v3, v2, 0x38

    shr-int/lit8 v24, v3, 0x3

    and-int/lit8 v23, v2, 0x7

    add-int/lit8 v2, p2, 0x6

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v11, Landroid/media/Cea708CCParser$CaptionWindow;

    move/from16 v19, v1

    invoke-direct/range {v11 .. v24}, Landroid/media/Cea708CCParser$CaptionWindow;-><init>(IZZZIZIIIIIII)V

    const/16 v1, 0x10

    invoke-direct {v3, v1, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_2
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    and-int/lit8 v5, v1, 0x30

    shr-int/2addr v5, v8

    and-int/lit8 v11, v1, 0xc

    shr-int/lit8 v11, v11, 0x2

    and-int/2addr v1, v9

    new-instance v13, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v13, v2, v5, v11, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    add-int/lit8 v5, p2, 0x2

    aget-byte v6, p1, v5

    and-int/lit16 v6, v6, 0x80

    shr-int/lit8 v4, v6, 0x5

    or-int v15, v2, v4

    and-int/lit8 v2, v1, 0x30

    shr-int/2addr v2, v8

    and-int/lit8 v4, v1, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v1, v9

    new-instance v14, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v14, v7, v2, v4, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    aget-byte v1, p1, v5

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_4

    move/from16 v16, v10

    goto :goto_4

    :cond_4
    move/from16 v16, v7

    :goto_4
    and-int/lit8 v2, v1, 0x30

    shr-int/lit8 v17, v2, 0x4

    and-int/lit8 v2, v1, 0xc

    shr-int/lit8 v18, v2, 0x2

    and-int/lit8 v19, v1, 0x3

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v21, v2, 0x4

    and-int/lit8 v2, v1, 0xc

    shr-int/lit8 v20, v2, 0x2

    and-int/lit8 v22, v1, 0x3

    add-int/lit8 v1, p2, 0x4

    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v12, Landroid/media/Cea708CCParser$CaptionWindowAttr;

    invoke-direct/range {v12 .. v22}, Landroid/media/Cea708CCParser$CaptionWindowAttr;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;IZIIIIII)V

    invoke-direct {v2, v3, v12}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v1

    :pswitch_3
    aget-byte v1, p1, p2

    and-int/2addr v1, v3

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x3f

    add-int/lit8 v3, p2, 0x2

    new-instance v4, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v5, Landroid/media/Cea708CCParser$CaptionPenLocation;

    invoke-direct {v5, v1, v2}, Landroid/media/Cea708CCParser$CaptionPenLocation;-><init>(II)V

    const/16 v1, 0xe

    invoke-direct {v4, v1, v5}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v4}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v3

    :pswitch_4
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    and-int/lit8 v3, v1, 0x30

    shr-int/2addr v3, v8

    and-int/lit8 v4, v1, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v1, v9

    new-instance v5, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v5, v2, v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v2, v1, 0xc0

    shr-int/2addr v2, v6

    and-int/lit8 v3, v1, 0x30

    shr-int/2addr v3, v8

    and-int/lit8 v4, v1, 0xc

    shr-int/lit8 v4, v4, 0x2

    and-int/2addr v1, v9

    new-instance v6, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v6, v2, v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    and-int/lit8 v2, v1, 0x30

    shr-int/2addr v2, v8

    and-int/lit8 v3, v1, 0xc

    shr-int/lit8 v3, v3, 0x2

    and-int/2addr v1, v9

    new-instance v4, Landroid/media/Cea708CCParser$CaptionColor;

    invoke-direct {v4, v7, v2, v3, v1}, Landroid/media/Cea708CCParser$CaptionColor;-><init>(IIII)V

    add-int/lit8 v1, p2, 0x3

    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v3, Landroid/media/Cea708CCParser$CaptionPenColor;

    invoke-direct {v3, v5, v6, v4}, Landroid/media/Cea708CCParser$CaptionPenColor;-><init>(Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;Landroid/media/Cea708CCParser$CaptionColor;)V

    const/16 v4, 0xd

    invoke-direct {v2, v4, v3}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v1

    :pswitch_5
    aget-byte v1, p1, p2

    and-int/lit16 v2, v1, 0xf0

    shr-int/lit8 v14, v2, 0x4

    and-int/lit8 v12, v1, 0x3

    const/16 v2, 0xc

    and-int/2addr v1, v2

    shr-int/lit8 v13, v1, 0x2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v3, v1, 0x80

    if-eqz v3, :cond_5

    move/from16 v18, v10

    goto :goto_5

    :cond_5
    move/from16 v18, v7

    :goto_5
    and-int/lit8 v3, v1, 0x40

    if-eqz v3, :cond_6

    move/from16 v17, v10

    goto :goto_6

    :cond_6
    move/from16 v17, v7

    :goto_6
    and-int/lit8 v3, v1, 0x38

    shr-int/lit8 v16, v3, 0x3

    and-int/lit8 v15, v1, 0x7

    add-int/lit8 v1, p2, 0x2

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    new-instance v11, Landroid/media/Cea708CCParser$CaptionPenAttr;

    invoke-direct/range {v11 .. v18}, Landroid/media/Cea708CCParser$CaptionPenAttr;-><init>(IIIIIZZ)V

    invoke-direct {v3, v2, v11}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v1

    :pswitch_6
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xb

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    :pswitch_7
    new-instance v1, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    :pswitch_8
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    const/16 v4, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_9
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_a
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v5, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_b
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v6, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_c
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v4, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_d
    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p2, 0x1

    new-instance v3, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v3, v8, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v3}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return v2

    :pswitch_e
    add-int/lit8 v1, v1, -0x80

    new-instance v2, Landroid/media/Cea708CCParser$CaptionEvent;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v2, v9, v1}, Landroid/media/Cea708CCParser$CaptionEvent;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v2}, Landroid/media/Cea708CCParser;->emitCaptionEvent(Landroid/media/Cea708CCParser$CaptionEvent;)V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x80
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private greylist-max-o parseC2([BI)I
    .locals 0

    iget p0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    if-ltz p0, :cond_0

    const/4 p1, 0x7

    if-gt p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    if-lt p0, p1, :cond_1

    const/16 p1, 0xf

    if-gt p0, p1, :cond_1

    add-int/lit8 p2, p2, 0x1

    return p2

    :cond_1
    const/16 p1, 0x10

    if-lt p0, p1, :cond_2

    const/16 p1, 0x17

    if-gt p0, p1, :cond_2

    add-int/lit8 p2, p2, 0x2

    return p2

    :cond_2
    const/16 p1, 0x18

    if-lt p0, p1, :cond_3

    const/16 p1, 0x1f

    if-gt p0, p1, :cond_3

    add-int/lit8 p2, p2, 0x3

    :cond_3
    :goto_0
    return p2
.end method

.method private greylist-max-o parseC3([BI)I
    .locals 0

    iget p0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 p1, 0x80

    if-lt p0, p1, :cond_0

    const/16 p1, 0x87

    if-gt p0, p1, :cond_0

    add-int/lit8 p2, p2, 0x4

    return p2

    :cond_0
    const/16 p1, 0x88

    if-lt p0, p1, :cond_1

    const/16 p1, 0x8f

    if-gt p0, p1, :cond_1

    add-int/lit8 p2, p2, 0x5

    :cond_1
    return p2
.end method

.method private greylist-max-o parseExt1([BI)I
    .locals 3

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    if-ltz v0, :cond_0

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC2([BI)I

    move-result p0

    return p0

    :cond_0
    const/16 v2, 0x80

    if-lt v0, v2, :cond_1

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC3([BI)I

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0x20

    if-lt v0, v2, :cond_2

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG2([BI)I

    move-result p0

    return p0

    :cond_2
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_3

    if-gt v0, v1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG3([BI)I

    move-result p0

    return p0

    :cond_3
    return p2
.end method

.method private greylist-max-o parseG0([BI)I
    .locals 1

    iget p1, p0, Landroid/media/Cea708CCParser;->mCommand:I

    const/16 v0, 0x7f

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    sget-object p1, Landroid/media/Cea708CCParser;->MUSIC_NOTE_CHAR:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return p2

    :cond_0
    iget-object p0, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private greylist-max-o parseG1([BI)I
    .locals 0

    iget-object p1, p0, Landroid/media/Cea708CCParser;->mBuffer:Ljava/lang/StringBuffer;

    iget p0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return p2
.end method

.method private greylist-max-o parseG2([BI)I
    .locals 0

    return p2
.end method

.method private greylist-max-o parseG3([BI)I
    .locals 0

    return p2
.end method

.method private greylist-max-o parseServiceBlockData([BI)I
    .locals 3

    aget-byte v0, p1, p2

    const/16 v1, 0xff

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/Cea708CCParser;->mCommand:I

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x10

    if-ne v0, v2, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseExt1([BI)I

    move-result p0

    return p0

    :cond_0
    if-ltz v0, :cond_1

    const/16 v2, 0x1f

    if-gt v0, v2, :cond_1

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC0([BI)I

    move-result p0

    return p0

    :cond_1
    const/16 v2, 0x80

    if-lt v0, v2, :cond_2

    const/16 v2, 0x9f

    if-gt v0, v2, :cond_2

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseC1([BI)I

    move-result p0

    return p0

    :cond_2
    const/16 v2, 0x20

    if-lt v0, v2, :cond_3

    const/16 v2, 0x7f

    if-gt v0, v2, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG0([BI)I

    move-result p0

    return p0

    :cond_3
    const/16 v2, 0xa0

    if-lt v0, v2, :cond_4

    if-gt v0, v1, :cond_4

    invoke-direct {p0, p1, p2}, Landroid/media/Cea708CCParser;->parseG1([BI)I

    move-result p0

    return p0

    :cond_4
    return p2
.end method


# virtual methods
.method public greylist-max-o parse([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, v0}, Landroid/media/Cea708CCParser;->parseServiceBlockData([BI)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/media/Cea708CCParser;->emitCaptionBuffer()V

    return-void
.end method
