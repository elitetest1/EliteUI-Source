.class public Landroid/view/KeyCharacterMap;
.super Ljava/lang/Object;
.source "KeyCharacterMap.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/KeyCharacterMap$UnavailableException;,
        Landroid/view/KeyCharacterMap$FallbackAction;,
        Landroid/view/KeyCharacterMap$KeyData;
    }
.end annotation


# static fields
.field private static final greylist-max-o ACCENT_ACUTE:I = 0xb4

.field private static final blacklist ACCENT_APOSTROPHE:I = 0x27

.field private static final greylist-max-o ACCENT_BREVE:I = 0x2d8

.field private static final greylist-max-o ACCENT_CARON:I = 0x2c7

.field private static final greylist-max-o ACCENT_CEDILLA:I = 0xb8

.field private static final greylist-max-o ACCENT_CIRCUMFLEX:I = 0x2c6

.field private static final greylist-max-o ACCENT_CIRCUMFLEX_LEGACY:I = 0x5e

.field private static final greylist-max-o ACCENT_COMMA_ABOVE:I = 0x1fbd

.field private static final greylist-max-o ACCENT_COMMA_ABOVE_RIGHT:I = 0x2bc

.field private static final greylist-max-o ACCENT_DOT_ABOVE:I = 0x2d9

.field private static final greylist-max-o ACCENT_DOT_BELOW:I = 0x2e

.field private static final greylist-max-o ACCENT_DOUBLE_ACUTE:I = 0x2dd

.field private static final greylist-max-o ACCENT_GRAVE:I = 0x2cb

.field private static final greylist-max-o ACCENT_GRAVE_LEGACY:I = 0x60

.field private static final greylist-max-o ACCENT_HOOK_ABOVE:I = 0x2c0

.field private static final greylist-max-o ACCENT_HORN:I = 0x27

.field private static final greylist-max-o ACCENT_MACRON:I = 0xaf

.field private static final greylist-max-o ACCENT_MACRON_BELOW:I = 0x2cd

.field private static final greylist-max-o ACCENT_OGONEK:I = 0x2db

.field private static final blacklist ACCENT_QUOTATION_MARK:I = 0x22

.field private static final greylist-max-o ACCENT_REVERSED_COMMA_ABOVE:I = 0x2bd

.field private static final greylist-max-o ACCENT_RING_ABOVE:I = 0x2da

.field private static final greylist-max-o ACCENT_STROKE:I = 0x2d

.field private static final greylist-max-o ACCENT_TILDE:I = 0x2dc

.field private static final greylist-max-o ACCENT_TILDE_LEGACY:I = 0x7e

.field private static final greylist-max-o ACCENT_TURNED_COMMA_ABOVE:I = 0x2bb

.field private static final greylist-max-o ACCENT_UMLAUT:I = 0xa8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_ABOVE:I = 0x2c8

.field private static final greylist-max-o ACCENT_VERTICAL_LINE_BELOW:I = 0x2cc

.field public static final whitelist ALPHA:I = 0x3

.field public static final whitelist BUILT_IN_KEYBOARD:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o CHAR_SPACE:I = 0x20

.field public static final whitelist COMBINING_ACCENT:I = -0x80000000

.field public static final whitelist COMBINING_ACCENT_MASK:I = 0x7fffffff

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/KeyCharacterMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist FULL:I = 0x4

.field public static final whitelist HEX_INPUT:C = '\uef00'

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED:I = 0x0

.field public static final whitelist MODIFIER_BEHAVIOR_CHORDED_OR_TOGGLED:I = 0x1

.field public static final whitelist NUMERIC:I = 0x1

.field public static final whitelist PICKER_DIALOG_INPUT:C = '\uef01'

.field public static final whitelist PREDICTIVE:I = 0x2

.field public static final whitelist SPECIAL_FUNCTION:I = 0x5

.field public static final whitelist VIRTUAL_KEYBOARD:I = -0x1

.field private static final greylist-max-o sAccentToCombining:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sCombiningToAccent:Landroid/util/SparseIntArray;

.field private static final greylist-max-o sDeadKeyBuilder:Ljava/lang/StringBuilder;

.field private static final greylist-max-o sDeadKeyCache:Landroid/util/SparseIntArray;


# instance fields
.field private greylist-max-o mPtr:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 13

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    const/16 v2, 0x300

    const/16 v3, 0x2cb

    invoke-static {v2, v3}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v4, 0x301

    const/16 v5, 0xb4

    invoke-static {v4, v5}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x2c6

    const/16 v7, 0x302

    invoke-static {v7, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x2dc

    const/16 v8, 0x303

    invoke-static {v8, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x304

    const/16 v9, 0xaf

    invoke-static {v6, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x306

    const/16 v9, 0x2d8

    invoke-static {v6, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x307

    const/16 v9, 0x2d9

    invoke-static {v6, v9}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0xa8

    const/16 v9, 0x308

    invoke-static {v9, v6}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x309

    const/16 v10, 0x2c0

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x30a

    const/16 v10, 0x2da

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x30b

    const/16 v10, 0x2dd

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x30c

    const/16 v10, 0x2c7

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x312

    const/16 v10, 0x2bb

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x313

    const/16 v10, 0x1fbd

    invoke-static {v6, v10}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x314

    const/16 v11, 0x2bd

    invoke-static {v6, v11}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x315

    const/16 v11, 0x2bc

    invoke-static {v6, v11}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x31b

    const/16 v11, 0x27

    invoke-static {v6, v11}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x323

    const/16 v12, 0x2e

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x327

    const/16 v12, 0xb8

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x328

    const/16 v12, 0x2db

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x329

    const/16 v12, 0x2cc

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x331

    const/16 v12, 0x2cd

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x335

    const/16 v12, 0x2d

    invoke-static {v6, v12}, Landroid/view/KeyCharacterMap;->addCombining(II)V

    const/16 v6, 0x340

    invoke-virtual {v0, v6, v3}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x341

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x343

    invoke-virtual {v0, v3, v10}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x30d

    invoke-virtual {v0, v3, v11}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v3, 0x30e

    const/16 v5, 0x22

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x60

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x5e

    invoke-virtual {v1, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    const/16 v0, 0x7e

    invoke-virtual {v1, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v1, v11, v4}, Landroid/util/SparseIntArray;->append(II)V

    invoke-virtual {v1, v5, v9}, Landroid/util/SparseIntArray;->append(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x44

    const/16 v1, 0x110

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x47

    const/16 v1, 0x1e4

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x48

    const/16 v1, 0x126

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x49

    const/16 v1, 0x197

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4c

    const/16 v1, 0x141

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x4f

    const/16 v1, 0xd8

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x54

    const/16 v1, 0x166

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x64

    const/16 v1, 0x111

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x67

    const/16 v1, 0x1e5

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x68

    const/16 v1, 0x127

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x69

    const/16 v1, 0x268

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6c

    const/16 v1, 0x142

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x6f

    const/16 v1, 0xf8

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    const/16 v0, 0x74

    const/16 v1, 0x167

    invoke-static {v12, v0, v1}, Landroid/view/KeyCharacterMap;->addDeadKey(III)V

    new-instance v0, Landroid/view/KeyCharacterMap$1;

    invoke-direct {v0}, Landroid/view/KeyCharacterMap$1;-><init>()V

    sput-object v0, Landroid/view/KeyCharacterMap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-r <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroid/view/KeyCharacterMap;->nativeReadFromParcel(Landroid/os/Parcel;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 p0, 0x0

    cmp-long p0, v0, p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not read KeyCharacterMap from parcel."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "parcel must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/KeyCharacterMap-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/KeyCharacterMap;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static greylist-max-o addCombining(II)V
    .locals 1

    sget-object v0, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseIntArray;->append(II)V

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p0}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method private static greylist-max-o addDeadKey(III)V
    .locals 1

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    if-eqz p0, :cond_0

    shl-int/lit8 p0, p0, 0x10

    or-int/2addr p0, p1

    sget-object p1, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseIntArray;->put(II)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid dead key declaration."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist applyOverlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeApplyOverlay(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static whitelist deviceHasKey(I)Z
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys([I)[Z

    move-result-object p0

    const/4 v0, 0x0

    aget-boolean p0, p0, v0

    return p0
.end method

.method public static whitelist deviceHasKeys([I)[Z
    .locals 1

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->deviceHasKeys([I)[Z

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getCombiningChar(I)I
    .locals 1

    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static whitelist getDeadChar(II)I
    .locals 5

    if-eq p1, p0, :cond_4

    const/16 v0, 0x20

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/KeyCharacterMap;->sAccentToCombining:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    :cond_1
    shl-int/lit8 v1, p0, 0x10

    or-int/2addr v1, p1

    sget-object v2, Landroid/view/KeyCharacterMap;->sDeadKeyCache:Landroid/util/SparseIntArray;

    monitor-enter v2

    const/4 v3, -0x1

    :try_start_0
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    if-ne v4, v3, :cond_3

    sget-object v3, Landroid/view/KeyCharacterMap;->sDeadKeyBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    int-to-char p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    int-to-char p0, p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/text/Normalizer$Form;->NFC:Ljava/text/Normalizer$Form;

    invoke-static {v3, p0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->codePointCount(II)I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    :cond_2
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseIntArray;->put(II)V

    move v4, v0

    :cond_3
    monitor-exit v2

    return v4

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_4
    :goto_0
    return p0
.end method

.method public static whitelist load(I)Landroid/view/KeyCharacterMap;
    .locals 3

    invoke-static {}, Landroid/hardware/input/InputManagerGlobal;->getInstance()Landroid/hardware/input/InputManagerGlobal;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManagerGlobal;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/KeyCharacterMap$UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not load key character map for device "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/KeyCharacterMap$UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getKeyCharacterMap()Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist load(Ljava/lang/String;Ljava/lang/String;)Landroid/view/KeyCharacterMap;
    .locals 1

    const/4 v0, -0x1

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    invoke-direct {v0, p0, p1}, Landroid/view/KeyCharacterMap;->applyOverlay(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static native blacklist nativeApplyOverlay(JLjava/lang/String;Ljava/lang/String;)V
.end method

.method private static native greylist-max-o nativeDispose(J)V
.end method

.method private static native blacklist nativeEquals(JJ)Z
.end method

.method private static native greylist-max-o nativeGetCharacter(JII)C
.end method

.method private static native greylist-max-o nativeGetDisplayLabel(JI)C
.end method

.method private static native greylist-max-o nativeGetEvents(J[C)[Landroid/view/KeyEvent;
.end method

.method private static native greylist-max-o nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z
.end method

.method private static native greylist-max-o nativeGetKeyboardType(J)I
.end method

.method private static native blacklist nativeGetMappedKey(JI)I
.end method

.method private static native greylist-max-o nativeGetMatch(JI[CI)C
.end method

.method private static native greylist-max-o nativeGetNumber(JI)C
.end method

.method private static native blacklist nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;
.end method

.method private static native greylist-max-o nativeReadFromParcel(Landroid/os/Parcel;)J
.end method

.method private static native greylist-max-o nativeWriteToParcel(JLandroid/os/Parcel;)V
.end method

.method public static blacklist obtainEmptyMap(I)Landroid/view/KeyCharacterMap;
    .locals 0

    invoke-static {p0}, Landroid/view/KeyCharacterMap;->nativeObtainEmptyKeyCharacterMap(I)Landroid/view/KeyCharacterMap;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Landroid/view/KeyCharacterMap;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Landroid/view/KeyCharacterMap;

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2

    iget-wide v5, p1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long p0, v5, v3

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v1, v2, v5, v6}, Landroid/view/KeyCharacterMap;->nativeEquals(JJ)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    iget-wide p0, p1, Landroid/view/KeyCharacterMap;->mPtr:J

    cmp-long p0, v1, p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    return v0
.end method

.method protected whitelist test-api finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeDispose(J)V

    iput-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    :cond_0
    return-void
.end method

.method public whitelist get(II)I
    .locals 2

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result p0

    sget-object p1, Landroid/view/KeyCharacterMap;->sCombiningToAccent:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p0, -0x80000000

    or-int/2addr p0, p1

    :cond_0
    return p0
.end method

.method public whitelist getDisplayLabel(I)C
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p0

    return p0
.end method

.method public whitelist getEvents([C)[Landroid/view/KeyEvent;
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetEvents(J[C)[Landroid/view/KeyEvent;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chars must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public greylist-max-o getFallbackAction(II)Landroid/view/KeyCharacterMap$FallbackAction;
    .locals 3

    invoke-static {}, Landroid/view/KeyCharacterMap$FallbackAction;->obtain()Landroid/view/KeyCharacterMap$FallbackAction;

    move-result-object v0

    invoke-static {p2}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p2

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v1, v2, p1, p2, v0}, Landroid/view/KeyCharacterMap;->nativeGetFallbackAction(JIILandroid/view/KeyCharacterMap$FallbackAction;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->removeFallbackModifiers()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput p0, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    return-object v0

    :cond_0
    iget p0, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    invoke-static {p0}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p0

    iput p0, v0, Landroid/view/KeyCharacterMap$FallbackAction;->metaState:I

    return-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/view/KeyCharacterMap$FallbackAction;->recycle()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist getKeyData(ILandroid/view/KeyCharacterMap$KeyData;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v0, v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->displayLabel:C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result v0

    iput-char v0, p2, Landroid/view/KeyCharacterMap$KeyData;->number:C

    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v2, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v2, v3, p1, v1}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v2

    aput-char v2, v0, v1

    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v1

    aput-char v1, v0, v3

    iget-object v0, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v1, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 v4, 0x2

    invoke-static {v1, v2, p1, v4}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result v1

    aput-char v1, v0, v4

    iget-object p2, p2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    const/4 p0, 0x3

    invoke-static {v0, v1, p1, p0}, Landroid/view/KeyCharacterMap;->nativeGetCharacter(JII)C

    move-result p1

    aput-char p1, p2, p0

    return v3

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo p1, "results.meta.length must be >= 4"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getKeyboardType()I
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1}, Landroid/view/KeyCharacterMap;->nativeGetKeyboardType(J)I

    move-result p0

    return p0
.end method

.method public blacklist getMappedKeyOrDefault(II)I
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetMappedKey(JI)I

    move-result p0

    if-nez p0, :cond_0

    return p2

    :cond_0
    return p0
.end method

.method public whitelist getMatch(I[C)C
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/KeyCharacterMap;->getMatch(I[CI)C

    move-result p0

    return p0
.end method

.method public whitelist getMatch(I[CI)C
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {p3}, Landroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result p3

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Landroid/view/KeyCharacterMap;->nativeGetMatch(JI[CI)C

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "chars must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist getModifierBehavior()I
    .locals 1

    invoke-virtual {p0}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist getNumber(I)C
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetNumber(JI)C

    move-result p0

    return p0
.end method

.method public whitelist isPrintingKey(I)Z
    .locals 2

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeGetDisplayLabel(JI)C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p0, Landroid/view/KeyCharacterMap;->mPtr:J

    invoke-static {v0, v1, p1}, Landroid/view/KeyCharacterMap;->nativeWriteToParcel(JLandroid/os/Parcel;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "parcel must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
