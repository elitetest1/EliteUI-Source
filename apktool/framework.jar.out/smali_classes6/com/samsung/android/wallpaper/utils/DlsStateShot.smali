.class Lcom/samsung/android/wallpaper/utils/DlsStateShot;
.super Ljava/lang/Object;
.source "SemWallpaperProperties.java"


# static fields
.field private static final blacklist STATE_DATA_CLEAR:I = 0x8000

.field private static final blacklist STATE_DRESS_ROOM:I = 0x1

.field private static final blacklist STATE_FRESH_PACK:I = 0x4

.field private static final blacklist STATE_LOCK_STAR:I = 0x40

.field private static final blacklist STATE_MAIN_MASK:I = 0x7ff

.field private static final blacklist STATE_MGS:I = 0x20

.field private static final blacklist STATE_REGION_SERVICES:I = 0x8

.field private static final blacklist STATE_SGG:I = 0x10

.field private static final blacklist STATE_SUB_DRESS_ROOM:I = 0x800

.field private static final blacklist STATE_SUB_FRESH_PACK:I = 0x1000

.field private static final blacklist STATE_SUB_LOCK_STAR:I = 0x2000

.field private static final blacklist STATE_SUB_MASK:I = 0x7800

.field private static final blacklist STATE_SUB_SGG:I = 0x4000

.field private static final blacklist STATE_WALLPAPER_SERVICES:I = 0x2

.field private static final blacklist TAG:Ljava/lang/String; = "DlsStateShot"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDlsStateShot:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->getDlsState(I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    return-void
.end method

.method private blacklist getDlsState(I)I
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "dls_state"

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    sget-object v0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getDlsState: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private static blacklist hasFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist getStateCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    return p0
.end method

.method public blacklist isDlsEnabled(I)Z
    .locals 5

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    and-int/lit16 v0, p0, -0x2844

    sget-object v2, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isDlsEnabled: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->hasFlag(II)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    if-eqz v0, :cond_4

    and-int/lit16 p0, p0, 0x7bc

    if-eqz p0, :cond_3

    return v3

    :cond_3
    return v1

    :cond_4
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_5

    and-int/lit16 p0, p0, 0x5000

    if-eqz p0, :cond_5

    return v3

    :cond_5
    return v1
.end method

.method public blacklist isSggEnabled(I)Z
    .locals 2

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSystem(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isPhone(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wallpaper/utils/WhichChecker;->isSubDisplay(I)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget p0, p0, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->mDlsStateShot:I

    const/16 p1, 0x10

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/utils/DlsStateShot;->hasFlag(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method
