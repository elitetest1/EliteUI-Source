.class public Landroid/text/method/DigitsKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DigitsKeyListener.java"


# static fields
.field private static final greylist-max-o COMPATIBILITY_CHARACTERS:[[C

.field private static final greylist-max-o DECIMAL:I = 0x2

.field private static final greylist-max-o DEFAULT_DECIMAL_POINT_CHARS:Ljava/lang/String; = "."

.field private static final greylist-max-o DEFAULT_SIGN_CHARS:Ljava/lang/String; = "-+"

.field private static final greylist-max-o EN_DASH:C = '\u2013'

.field private static final greylist-max-o HYPHEN_MINUS:C = '-'

.field private static final greylist-max-o MINUS_SIGN:C = '\u2212'

.field private static final greylist-max-o SIGN:I = 0x1

.field private static final greylist-max-o sLocaleCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sLocaleInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "[",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o sStringCacheLock:Ljava/lang/Object;

.field private static final greylist-max-o sStringInstanceCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/text/method/DigitsKeyListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAccepted:[C

.field private final greylist-max-o mDecimal:Z

.field private greylist-max-o mDecimalPointChars:Ljava/lang/String;

.field private final greylist-max-o mLocale:Ljava/util/Locale;

.field private greylist-max-o mNeedsAdvancedInput:Z

.field private final greylist-max-o mSign:Z

.field private greylist-max-o mSignChars:Ljava/lang/String;

.field private final greylist-max-o mStringMode:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 4

    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    const/16 v1, 0xc

    new-array v1, v1, [C

    fill-array-data v1, :array_1

    const/16 v2, 0xb

    new-array v2, v2, [C

    fill-array-data v2, :array_2

    const/16 v3, 0xd

    new-array v3, v3, [C

    fill-array-data v3, :array_3

    filled-new-array {v0, v1, v2, v3}, [[C

    move-result-object v0

    sput-object v0, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
    .end array-data

    :array_2
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2es
    .end array-data

    nop

    :array_3
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor whitelist <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-virtual {p1, v0, v1, v2, v0}, Ljava/lang/String;->getChars(II[CI)V

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/Locale;ZZ)V
    .locals 6

    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iput-boolean p3, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mLocale:Ljava/util/Locale;

    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_0
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-static {v1, p1}, Landroid/text/method/NumberKeyListener;->addDigits(Ljava/util/Collection;Ljava/util/Locale;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_1
    if-nez p2, :cond_2

    if-eqz p3, :cond_8

    :cond_2
    invoke-static {p1}, Landroid/icu/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getMinusSignString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getPlusSignString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/method/DigitsKeyListener;->stripBidiControls(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v4, v2, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    const/16 v3, 0x2212

    if-eq p2, v3, :cond_4

    const/16 v3, 0x2013

    if-ne p2, v3, :cond_6

    :cond_4
    const/16 p2, 0x2d

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    goto :goto_1

    :cond_5
    :goto_0
    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_6
    :goto_1
    if-eqz p3, :cond_8

    invoke-virtual {p1}, Landroid/icu/text/DecimalFormatSymbols;->getDecimalSeparatorString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-le p2, v2, :cond_7

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->setToCompat()V

    return-void

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    :cond_8
    invoke-static {v1}, Landroid/text/method/NumberKeyListener;->collectionToArray(Ljava/util/Collection;)[C

    move-result-object p1

    iput-object p1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-direct {p0}, Landroid/text/method/DigitsKeyListener;->calculateNeedForAdvancedInput()V

    return-void
.end method

.method public constructor whitelist <init>(ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    return-void
.end method

.method private greylist-max-o calculateNeedForAdvancedInput()V
    .locals 2

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v0, v1, v0

    iget-object v1, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->containsAll([C[C)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method public static whitelist getInstance()Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;
    .locals 3

    sget-object v0, Landroid/text/method/DigitsKeyListener;->sStringCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/text/method/DigitsKeyListener;->sStringInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/method/DigitsKeyListener;

    if-nez v2, :cond_0

    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/method/DigitsKeyListener;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public static greylist-max-o getInstance(Ljava/util/Locale;Landroid/text/method/DigitsKeyListener;)Landroid/text/method/DigitsKeyListener;
    .locals 1

    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mStringMode:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-boolean v0, p1, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean p1, p1, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    invoke-static {p0, v0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 5

    if-eqz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    or-int/2addr v0, p1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->sLocaleCacheLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Landroid/text/method/DigitsKeyListener;->sLocaleInstanceCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/DigitsKeyListener;

    if-eqz v3, :cond_1

    aget-object v4, v3, v0

    if-eqz v4, :cond_1

    monitor-exit v1

    return-object v4

    :cond_1
    if-nez v3, :cond_2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/text/method/DigitsKeyListener;

    invoke-virtual {v2, p0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    new-instance v2, Landroid/text/method/DigitsKeyListener;

    invoke-direct {v2, p0, p1, p2}, Landroid/text/method/DigitsKeyListener;-><init>(Ljava/util/Locale;ZZ)V

    aput-object v2, v3, v0

    monitor-exit v1

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static whitelist getInstance(ZZ)Landroid/text/method/DigitsKeyListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/util/Locale;ZZ)Landroid/text/method/DigitsKeyListener;

    move-result-object p0

    return-object p0
.end method

.method private greylist-max-o isDecimalPointChar(C)Z
    .locals 0

    iget-object p0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o isSignChar(C)Z
    .locals 0

    iget-object p0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-o setToCompat()V
    .locals 3

    const-string v0, "."

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mDecimalPointChars:Ljava/lang/String;

    const-string v0, "-+"

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mSignChars:Ljava/lang/String;

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v0, v1

    sget-object v1, Landroid/text/method/DigitsKeyListener;->COMPATIBILITY_CHARACTERS:[[C

    aget-object v0, v1, v0

    iput-object v0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    iput-boolean v2, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    return-void
.end method

.method private static greylist-max-o stripBidiControls(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/icu/lang/UCharacter;->hasBinaryProperty(II)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public whitelist filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 9

    invoke-super/range {p0 .. p6}, Landroid/text/method/NumberKeyListener;->filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    move-result-object v0

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    move-object p1, v0

    move p2, v1

    :cond_1
    invoke-interface {p4}, Landroid/text/Spanned;->length()I

    move-result v2

    const/4 v3, -0x1

    move v5, v1

    move v4, v3

    :goto_0
    if-ge v5, p5, :cond_4

    invoke-interface {p4, v5}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    if-eqz v7, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    const-string v5, ""

    if-ge p6, v2, :cond_7

    invoke-interface {p4, p6}, Landroid/text/Spanned;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    if-eqz v7, :cond_5

    return-object v5

    :cond_5
    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v5

    if-eqz v5, :cond_6

    move v3, p6

    :cond_6
    add-int/lit8 p6, p6, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 p4, p3, -0x1

    const/4 p6, 0x0

    move-object v2, p6

    :goto_3
    if-lt p4, p2, :cond_11

    invoke-interface {p1, p4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isSignChar(C)Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_a

    if-ne p4, p2, :cond_d

    if-eqz p5, :cond_8

    goto :goto_5

    :cond_8
    if-ltz v4, :cond_9

    goto :goto_5

    :cond_9
    move v4, p4

    goto :goto_4

    :cond_a
    invoke-direct {p0, v6}, Landroid/text/method/DigitsKeyListener;->isDecimalPointChar(C)Z

    move-result v6

    if-eqz v6, :cond_c

    if-ltz v3, :cond_b

    goto :goto_5

    :cond_b
    move v3, p4

    :cond_c
    :goto_4
    move v8, v1

    :cond_d
    :goto_5
    if-eqz v8, :cond_10

    add-int/lit8 v6, p2, 0x1

    if-ne p3, v6, :cond_e

    return-object v5

    :cond_e
    if-nez v2, :cond_f

    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    :cond_f
    sub-int v6, p4, p2

    add-int/lit8 v7, p4, 0x1

    sub-int/2addr v7, p2

    invoke-virtual {v2, v6, v7}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_10
    add-int/lit8 p4, p4, -0x1

    goto :goto_3

    :cond_11
    if-eqz v2, :cond_12

    return-object v2

    :cond_12
    if-eqz v0, :cond_13

    :goto_6
    return-object v0

    :cond_13
    return-object p6
.end method

.method protected whitelist getAcceptedChars()[C
    .locals 0

    iget-object p0, p0, Landroid/text/method/DigitsKeyListener;->mAccepted:[C

    return-object p0
.end method

.method public whitelist getInputType()I
    .locals 1

    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mNeedsAdvancedInput:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean v0, p0, Landroid/text/method/DigitsKeyListener;->mSign:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x1002

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    iget-boolean p0, p0, Landroid/text/method/DigitsKeyListener;->mDecimal:Z

    if-eqz p0, :cond_2

    or-int/lit16 p0, v0, 0x2000

    return p0

    :cond_2
    return v0
.end method
