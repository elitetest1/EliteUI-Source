.class public Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;
.super Ljava/lang/Object;
.source "ATCommands.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "ATCommands"

.field private static final blacklist mIsTestBinary:Z


# instance fields
.field private blacklist mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

.field private blacklist mCmds:[B

.field private blacklist mFlags:Z

.field private blacklist mHasAttribute:Z

.field private blacklist mName:Ljava/lang/String;

.field private blacklist mType:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string/jumbo v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BZIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    const/16 v1, 0xaf

    iput v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean v0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance v1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-direct {v1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    iput-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    iput p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    iput-boolean p5, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "CMD Name = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "CMD Type = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "CMD Attribute = "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->debugLog(Ljava/lang/String;)V

    iget-boolean p3, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    if-eqz p3, :cond_0

    const-string p3, "\\|"

    invoke-virtual {p1, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p1, p2}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->setAttribute([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    :cond_0
    return-void
.end method

.method public static blacklist debugLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mIsTestBinary:Z

    if-eqz v0, :cond_0

    const-string v0, "ATCommands"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 9

    instance-of v0, p1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    check-cast p1, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getCmdBytes()[B

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v5

    const/4 v8, 0x2

    if-lt v7, v8, :cond_a

    array-length v7, v6

    if-ge v7, v8, :cond_2

    goto :goto_1

    :cond_2
    aget-object v2, v5, v0

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v4, v6, v0

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    array-length v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_8

    :try_start_0
    aget-object v6, v2, v5

    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-boolean v6, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    if-nez v6, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->getFlags()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_4

    aget-object v6, v3, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 p1, 0x9

    if-le p0, p1, :cond_5

    :cond_4
    move v1, v0

    :cond_5
    return v1

    :cond_6
    aget-object v6, v2, v5

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v6, :cond_7

    return v1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    array-length p0, v2

    array-length p1, v3

    if-ne p0, p1, :cond_9

    move v1, v0

    :cond_9
    return v1

    :cond_a
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string p1, "=*"

    if-eqz p0, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_b
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_c

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getCarrierBlockList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierBlockList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCarrierOpenList()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierOpenList()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCmdBytes()[B
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mCmds:[B

    return-object p0
.end method

.method public blacklist getFlags()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mFlags:Z

    return p0
.end method

.method public blacklist getHasAttribute()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mHasAttribute:Z

    return p0
.end method

.method public blacklist getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getType()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mType:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mName:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist isAutoBlockerOpenCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getAutoBlockerOpen()Z

    move-result p0

    return p0
.end method

.method public blacklist isCSOpenCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCSOpen()Z

    move-result p0

    return p0
.end method

.method public blacklist isCarrierBlockCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierBlock()Z

    move-result p0

    return p0
.end method

.method public blacklist isCarrierOpenCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getCarrierOpen()Z

    move-result p0

    return p0
.end method

.method public blacklist isFacBinOpenATDCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenATD()Z

    move-result p0

    return p0
.end method

.method public blacklist isFacBinOpenATDDDEXECommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenATDDDEXE()Z

    move-result p0

    return p0
.end method

.method public blacklist isFacBinOpenDDEXECommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getFacBinOpenDDEXE()Z

    move-result p0

    return p0
.end method

.method public blacklist isSecureLockOpenCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getSecureLockOpen()Z

    move-result p0

    return p0
.end method

.method public blacklist isShipBlockCommand()Z
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommands;->mAttribute:Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;

    invoke-virtual {p0}, Lcom/samsung/android/service/ProtectedATCommand/list/ATCommandAttribute;->getShipBlock()Z

    move-result p0

    return p0
.end method
