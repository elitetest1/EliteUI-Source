.class public abstract Landroid/text/method/MetaKeyKeyListener;
.super Ljava/lang/Object;
.source "MetaKeyKeyListener.java"


# static fields
.field private static final greylist-max-o ALT:Ljava/lang/Object;

.field private static final greylist-max-o CAP:Ljava/lang/Object;

.field private static final greylist-max-o LOCKED:I = 0x4000011

.field private static final greylist-max-o LOCKED_RETURN_VALUE:I = 0x2

.field public static final whitelist META_ALT_LOCKED:I = 0x200

.field private static final greylist-max-o META_ALT_MASK:J = 0x2020200000202L

.field public static final whitelist META_ALT_ON:I = 0x2

.field private static final greylist-max-o META_ALT_PRESSED:J = 0x20000000000L

.field private static final greylist-max-o META_ALT_RELEASED:J = 0x2000000000000L

.field private static final greylist-max-o META_ALT_USED:J = 0x200000000L

.field public static final whitelist META_CAP_LOCKED:I = 0x100

.field private static final greylist-max-o META_CAP_PRESSED:J = 0x10000000000L

.field private static final greylist-max-o META_CAP_RELEASED:J = 0x1000000000000L

.field private static final greylist-max-o META_CAP_USED:J = 0x100000000L

.field public static final greylist-max-o META_SELECTING:I = 0x800

.field private static final greylist-max-o META_SHIFT_MASK:J = 0x1010100000101L

.field public static final whitelist META_SHIFT_ON:I = 0x1

.field public static final whitelist META_SYM_LOCKED:I = 0x400

.field private static final greylist-max-o META_SYM_MASK:J = 0x4040400000404L

.field public static final whitelist META_SYM_ON:I = 0x4

.field private static final greylist-max-o META_SYM_PRESSED:J = 0x40000000000L

.field private static final greylist-max-o META_SYM_RELEASED:J = 0x4000000000000L

.field private static final greylist-max-o META_SYM_USED:J = 0x400000000L

.field private static final greylist-max-o PRESSED:I = 0x1000011

.field private static final greylist-max-o PRESSED_RETURN_VALUE:I = 0x1

.field private static final greylist-max-o RELEASED:I = 0x2000011

.field private static final greylist-max-o SELECTING:Ljava/lang/Object;

.field private static final greylist-max-o SYM:Ljava/lang/Object;

.field private static final greylist-max-o USED:I = 0x3000011


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    new-instance v0, Landroid/text/NoCopySpan$Concrete;

    invoke-direct {v0}, Landroid/text/NoCopySpan$Concrete;-><init>()V

    sput-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o adjust(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1000011

    if-ne v0, v1, :cond_0

    const v0, 0x3000011

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1, v1, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_0
    const v1, 0x2000011

    if-ne v0, v1, :cond_1

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static whitelist adjustMetaAfterKeypress(J)J
    .locals 6

    const-wide v0, 0x10000000000L

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide v4, -0x1010100000102L

    if-eqz v0, :cond_0

    and-long/2addr p0, v4

    const-wide v0, 0x100000001L

    or-long/2addr p0, v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x1000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    and-long/2addr p0, v4

    :cond_1
    :goto_0
    const-wide v0, 0x20000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x2020200000203L

    if-eqz v0, :cond_2

    and-long/2addr p0, v4

    const-wide v0, 0x200000002L

    or-long/2addr p0, v0

    goto :goto_1

    :cond_2
    const-wide/high16 v0, 0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    and-long/2addr p0, v4

    :cond_3
    :goto_1
    const-wide v0, 0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    const-wide v4, -0x4040400000405L

    if-eqz v0, :cond_4

    and-long/2addr p0, v4

    const-wide v0, 0x400000004L

    or-long/2addr p0, v0

    return-wide p0

    :cond_4
    const-wide/high16 v0, 0x4000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    and-long/2addr p0, v4

    :cond_5
    return-wide p0
.end method

.method public static whitelist adjustMetaAfterKeypress(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->adjust(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static whitelist clearMetaKeyState(Landroid/text/Editable;I)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_2
    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_3

    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, p1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method private static greylist-max-o getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I
    .locals 2

    instance-of v0, p0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p0, Landroid/text/Spanned;

    invoke-interface {p0, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    const p1, 0x4000011

    if-ne p0, p1, :cond_1

    return p3

    :cond_1
    if-eqz p0, :cond_2

    return p2

    :cond_2
    return v1
.end method

.method public static final whitelist getMetaState(J)I
    .locals 6

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x100

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v4, 0x200

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    or-int/lit16 v0, v0, 0x200

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x2

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    :cond_3
    :goto_1
    const-wide/16 v4, 0x400

    and-long/2addr v4, p0

    cmp-long v1, v4, v2

    if-eqz v1, :cond_4

    or-int/lit16 p0, v0, 0x400

    return p0

    :cond_4
    const-wide/16 v4, 0x4

    and-long/2addr p0, v4

    cmp-long p0, p0, v2

    if-eqz p0, :cond_5

    or-int/lit8 p0, v0, 0x4

    return p0

    :cond_5
    return v0
.end method

.method public static final whitelist getMetaState(JI)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    if-eq p2, v2, :cond_6

    if-eq p2, v1, :cond_3

    const/4 v5, 0x4

    if-eq p2, v5, :cond_0

    return v0

    :cond_0
    const-wide/16 v5, 0x400

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_1

    return v1

    :cond_1
    const-wide/16 v5, 0x4

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    const-wide/16 v5, 0x200

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_4

    return v1

    :cond_4
    const-wide/16 v5, 0x2

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    const-wide/16 v5, 0x100

    and-long/2addr v5, p0

    cmp-long p2, v5, v3

    if-eqz p2, :cond_7

    return v1

    :cond_7
    const-wide/16 v5, 0x1

    and-long/2addr p0, v5

    cmp-long p0, p0, v3

    if-eqz p0, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;)I
    .locals 4

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    const/4 v1, 0x1

    const/16 v2, 0x100

    invoke-static {p0, v0, v1, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v0

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    const/4 v2, 0x2

    const/16 v3, 0x200

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    const/4 v2, 0x4

    const/16 v3, 0x400

    invoke-static {p0, v1, v2, v3}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result v1

    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/16 v2, 0x800

    invoke-static {p0, v1, v2, v2}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;I)I
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/16 v2, 0x800

    if-eq p1, v2, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    :cond_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    :cond_2
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0

    :cond_3
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, p1, v1, v0}, Landroid/text/method/MetaKeyKeyListener;->getActive(Ljava/lang/CharSequence;Ljava/lang/Object;II)I

    move-result p0

    return p0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;ILandroid/view/KeyEvent;)I
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr v0, p0

    :cond_0
    const/16 p0, 0x800

    if-ne p0, p1, :cond_2

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    int-to-long v0, v0

    invoke-static {v0, v1, p1}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(JI)I

    move-result p0

    return p0
.end method

.method public static final whitelist getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-static {p0}, Landroid/text/method/MetaKeyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result p0

    or-int/2addr p0, v0

    return p0

    :cond_0
    return v0
.end method

.method public static whitelist handleKeyDown(JILandroid/view/KeyEvent;)J
    .locals 15

    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    const-wide/high16 v11, 0x4000000000000L

    const-wide v13, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide/16 v7, 0x400

    const-wide v9, 0x40000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_2
    return-wide p0

    :cond_3
    :goto_0
    const-wide/high16 v11, 0x2000000000000L

    const-wide v13, 0x200000000L

    const/4 v4, 0x2

    const-wide v5, 0x2020200000202L

    const-wide/16 v7, 0x200

    const-wide v9, 0x20000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_1
    const-wide/high16 v11, 0x1000000000000L

    const-wide v13, 0x100000000L

    const/4 v4, 0x1

    const-wide v5, 0x1010100000101L

    const-wide/16 v7, 0x100

    const-wide v9, 0x10000000000L

    move-wide v2, p0

    invoke-static/range {v2 .. v14}, Landroid/text/method/MetaKeyKeyListener;->press(JIJJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public static whitelist handleKeyUp(JILandroid/view/KeyEvent;)J
    .locals 14

    move/from16 v0, p2

    const/16 v1, 0x3b

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x39

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x4e

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x3f

    if-ne v0, v1, :cond_2

    const-wide/high16 v9, 0x4000000000000L

    const-wide v11, 0x400000000L

    const/4 v4, 0x4

    const-wide v5, 0x4040400000404L

    const-wide v7, 0x40000000000L

    move-wide v2, p0

    move-object/from16 v13, p3

    invoke-static/range {v2 .. v13}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    :cond_2
    return-wide p0

    :cond_3
    :goto_0
    const-wide/high16 v7, 0x2000000000000L

    const-wide v9, 0x200000000L

    const/4 v2, 0x2

    const-wide v3, 0x2020200000202L

    const-wide v5, 0x20000000000L

    move-wide v0, p0

    move-object/from16 v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0

    :cond_4
    :goto_1
    const-wide/high16 v7, 0x1000000000000L

    const-wide v9, 0x100000000L

    const/4 v2, 0x1

    const-wide v3, 0x1010100000101L

    const-wide v5, 0x10000000000L

    move-wide v0, p0

    move-object/from16 v11, p3

    invoke-static/range {v0 .. v11}, Landroid/text/method/MetaKeyKeyListener;->release(JIJJJJLandroid/view/KeyEvent;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static whitelist isMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    if-eq p1, p0, :cond_1

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static whitelist isSelectingMetaTracker(Ljava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static greylist-max-o press(JIJJJJJ)J
    .locals 4

    and-long v0, p0, p7

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    and-long v0, p0, p9

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    not-long p3, p3

    and-long/2addr p0, p3

    int-to-long p2, p2

    or-long/2addr p0, p2

    or-long/2addr p0, p5

    return-wide p0

    :cond_1
    and-long v0, p0, p11

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :goto_0
    return-wide p0

    :cond_2
    and-long/2addr p5, p0

    cmp-long p5, p5, v2

    if-eqz p5, :cond_3

    not-long p2, p3

    and-long/2addr p0, p2

    return-wide p0

    :cond_3
    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    return-wide p0
.end method

.method private greylist-max-o press(Landroid/text/Editable;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    const v0, 0x1000011

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x2000011

    const v2, 0x4000011

    const/4 v3, 0x0

    if-ne p0, v1, :cond_1

    invoke-interface {p1, p2, v3, v3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void

    :cond_1
    const v1, 0x3000011

    if-ne p0, v1, :cond_2

    :goto_0
    return-void

    :cond_2
    if-ne p0, v2, :cond_3

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-interface {p1, p2, v3, v3, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private static greylist-max-o release(JIJJJJLandroid/view/KeyEvent;)J
    .locals 2

    invoke-virtual {p11}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p11

    invoke-virtual {p11}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p11

    const/4 v0, 0x1

    if-eq p11, v0, :cond_0

    not-long p2, p3

    and-long/2addr p0, p2

    return-wide p0

    :cond_0
    and-long/2addr p9, p0

    const-wide/16 v0, 0x0

    cmp-long p9, p9, v0

    if-eqz p9, :cond_1

    not-long p2, p3

    and-long/2addr p0, p2

    return-wide p0

    :cond_1
    and-long p3, p0, p5

    cmp-long p3, p3, v0

    if-eqz p3, :cond_2

    int-to-long p2, p2

    or-long/2addr p2, p7

    or-long/2addr p0, p2

    :cond_2
    return-wide p0
.end method

.method private greylist-max-o release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V
    .locals 1

    invoke-interface {p1, p2}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/KeyCharacterMap;->getModifierBehavior()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void

    :cond_0
    const p3, 0x3000011

    if-ne p0, p3, :cond_1

    invoke-interface {p1, p2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    return-void

    :cond_1
    const p3, 0x1000011

    if-ne p0, p3, :cond_2

    const p0, 0x2000011

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3, p3, p0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_2
    return-void
.end method

.method private static greylist-max-o resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x4000011

    if-ne v0, v1, :cond_0

    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static whitelist resetLockedMeta(J)J
    .locals 4

    const-wide/16 v0, 0x100

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide v0, -0x1010100000102L

    and-long/2addr p0, v0

    :cond_0
    const-wide/16 v0, 0x200

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    const-wide v0, -0x2020200000203L

    and-long/2addr p0, v0

    :cond_1
    const-wide/16 v0, 0x400

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long/2addr p0, v0

    :cond_2
    return-wide p0
.end method

.method protected static whitelist resetLockedMeta(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-static {p0, v0}, Landroid/text/method/MetaKeyKeyListener;->resetLock(Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method public static whitelist resetMetaState(Landroid/text/Spannable;)V
    .locals 1

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    sget-object v0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p0, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method

.method public static greylist startSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 2

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    const/4 v0, 0x0

    const v1, 0x1000011

    invoke-interface {p1, p0, v0, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public static greylist stopSelecting(Landroid/view/View;Landroid/text/Spannable;)V
    .locals 0

    sget-object p0, Landroid/text/method/MetaKeyKeyListener;->SELECTING:Ljava/lang/Object;

    invoke-interface {p1, p0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public whitelist clearMetaKeyState(JI)J
    .locals 4

    and-int/lit8 p0, p3, 0x1

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_0

    const-wide/16 v2, 0x100

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const-wide v2, -0x1010100000102L

    and-long/2addr p1, v2

    :cond_0
    and-int/lit8 p0, p3, 0x2

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x200

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_1

    const-wide v2, -0x2020200000203L

    and-long/2addr p1, v2

    :cond_1
    and-int/lit8 p0, p3, 0x4

    if-eqz p0, :cond_2

    const-wide/16 v2, 0x400

    and-long/2addr v2, p1

    cmp-long p0, v2, v0

    if-eqz p0, :cond_2

    const-wide v0, -0x4040400000405L

    and-long p0, p1, v0

    return-wide p0

    :cond_2
    return-wide p1
.end method

.method public whitelist clearMetaKeyState(Landroid/view/View;Landroid/text/Editable;I)V
    .locals 0

    invoke-static {p2, p3}, Landroid/text/method/MetaKeyKeyListener;->clearMetaKeyState(Landroid/text/Editable;I)V

    return-void
.end method

.method public whitelist onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x3b

    const/4 p4, 0x1

    if-eq p3, p1, :cond_4

    const/16 p1, 0x3c

    if-ne p3, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x39

    if-eq p3, p1, :cond_3

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_3

    const/16 p1, 0x4e

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f

    if-ne p3, p1, :cond_2

    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p4

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p4

    :cond_4
    :goto_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p1}, Landroid/text/method/MetaKeyKeyListener;->press(Landroid/text/Editable;Ljava/lang/Object;)V

    return p4
.end method

.method public whitelist onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/16 p1, 0x3b

    const/4 v0, 0x1

    if-eq p3, p1, :cond_4

    const/16 p1, 0x3c

    if-ne p3, p1, :cond_0

    goto :goto_1

    :cond_0
    const/16 p1, 0x39

    if-eq p3, p1, :cond_3

    const/16 p1, 0x3a

    if-eq p3, p1, :cond_3

    const/16 p1, 0x4e

    if-ne p3, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x3f

    if-ne p3, p1, :cond_2

    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->SYM:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->ALT:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v0

    :cond_4
    :goto_1
    sget-object p1, Landroid/text/method/MetaKeyKeyListener;->CAP:Ljava/lang/Object;

    invoke-direct {p0, p2, p1, p4}, Landroid/text/method/MetaKeyKeyListener;->release(Landroid/text/Editable;Ljava/lang/Object;Landroid/view/KeyEvent;)V

    return v0
.end method
