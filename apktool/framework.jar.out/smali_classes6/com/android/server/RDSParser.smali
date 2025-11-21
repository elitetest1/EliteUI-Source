.class public Lcom/android/server/RDSParser;
.super Ljava/lang/Object;
.source "RDSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/RDSParser$RadioText;,
        Lcom/android/server/RDSParser$ProgramService;
    }
.end annotation


# static fields
.field public static final blacklist FM_RDS_STATUS_UNCORRECTABLE:I = 0x3

.field public static final blacklist GROUP_TYPE_0A:I = 0x0

.field public static final blacklist GROUP_TYPE_0B:I = 0x1

.field public static final blacklist GROUP_TYPE_2A:I = 0x4

.field public static final blacklist GROUP_TYPE_2B:I = 0x5

.field public static final blacklist PROGRAM_SERVICE_MAX_SIZE:I = 0x8

.field public static final blacklist PS_CHECK_BOUND:I = 0x2

.field public static final blacklist RADIO_TEXT_MAX_SIZE:I = 0x40

.field public static final blacklist RT_CHECK_BOUND:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "FMRDSParser"

.field private static blacklist mInstance:Lcom/android/server/RDSParser;


# instance fields
.field private blacklist mFinalProgramService:Ljava/lang/String;

.field private blacklist mFinalRadioText:Ljava/lang/String;

.field private blacklist mPI:I

.field private blacklist mPTY:I

.field private blacklist mProgramService:Lcom/android/server/RDSParser$ProgramService;

.field private blacklist mRadioText:Lcom/android/server/RDSParser$RadioText;

.field private blacklist mTP:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmProgramService(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$ProgramService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioText(Lcom/android/server/RDSParser;)Lcom/android/server/RDSParser$RadioText;
    .locals 0

    iget-object p0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smLog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/RDSParser;->mPI:I

    iput v1, p0, Lcom/android/server/RDSParser;->mPTY:I

    iput v1, p0, Lcom/android/server/RDSParser;->mTP:I

    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-void
.end method

.method private static blacklist Log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "FMRDSParser"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/server/RDSParser;
    .locals 1

    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/RDSParser;

    invoke-direct {v0}, Lcom/android/server/RDSParser;-><init>()V

    sput-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    :cond_0
    sget-object v0, Lcom/android/server/RDSParser;->mInstance:Lcom/android/server/RDSParser;

    return-object v0
.end method


# virtual methods
.method public blacklist getProgramService()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v0}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$ProgramService;->getProgramService()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getRadioText()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_validate(Lcom/android/server/RDSParser$RadioText;)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v0}, Lcom/android/server/RDSParser$RadioText;->getRadioText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist isRDSDataValid()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetisRTValid(Lcom/android/server/RDSParser$RadioText;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {p0}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetisPSValid(Lcom/android/server/RDSParser$ProgramService;)Z

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public blacklist parseData(Lcom/android/server/ExtRDSData;)V
    .locals 12

    iget v0, p1, Lcom/android/server/ExtRDSData;->blera:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    shr-int/2addr v0, v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Group code: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v4, v0, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_1

    const-string v4, "A"

    goto :goto_0

    :cond_1
    const-string v4, "B"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    aget-byte v3, v3, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p1, Lcom/android/server/ExtRDSData;->rdsa:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/RDSParser;->mPI:I

    if-eq v3, v4, :cond_2

    iput v3, p0, Lcom/android/server/RDSParser;->mPI:I

    iget-object v3, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v3}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    iget-object v3, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {v3}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    :cond_2
    const-string v3, "RDS is corrupted!"

    const/4 v4, 0x2

    if-eqz v0, :cond_e

    if-eq v0, v5, :cond_e

    const/4 v6, 0x4

    if-eq v0, v6, :cond_3

    const/4 v7, 0x5

    if-eq v0, v7, :cond_3

    goto/16 :goto_6

    :cond_3
    iget-object v7, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v7, v7, v5

    and-int/lit8 v7, v7, 0xf

    iget-object v8, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v8, v8, v5

    and-int/lit8 v8, v8, 0x10

    shr-int/2addr v8, v6

    new-array v9, v6, [C

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "RTChangeFlag: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v10}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;)I

    move-result v10

    if-eq v8, v10, :cond_4

    const-string v10, "Detected change"

    invoke-static {v10}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {v10}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    iget-object v10, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v10, v2}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputbuffer_validate(Lcom/android/server/RDSParser$RadioText;I)V

    iget-object v10, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v10, v8}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputpreviousRTChangeFlag(Lcom/android/server/RDSParser$RadioText;I)V

    :cond_4
    const/16 v8, 0x40

    if-ne v0, v6, :cond_7

    iget v0, p1, Lcom/android/server/ExtRDSData;->blerc:I

    if-eq v0, v1, :cond_6

    iget v0, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v0, v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v0, v0, v2

    int-to-char v0, v0

    aput-char v0, v9, v2

    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v0, v0, v5

    int-to-char v0, v0

    aput-char v0, v9, v5

    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v0, v0, v2

    int-to-char v0, v0

    aput-char v0, v9, v4

    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v0, v0, v5

    int-to-char v0, v0

    aput-char v0, v9, v1

    move v4, v6

    move v0, v8

    goto :goto_2

    :cond_6
    :goto_1
    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void

    :cond_7
    iget v0, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v0, v1, :cond_8

    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v0, v0, v2

    int-to-char v0, v0

    aput-char v0, v9, v2

    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v0, v0, v5

    int-to-char v0, v0

    aput-char v0, v9, v5

    const/16 v0, 0x20

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Group 2 - Segment:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " - data:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v10, v10, v2

    int-to-char v10, v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ","

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v11, v11, v5

    int-to-char v11, v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v11, v11, v2

    int-to-char v11, v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v11, v11, v5

    int-to-char v11, v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsc:[B

    aget-byte v3, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v3, v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte p1, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    mul-int/2addr v7, v4

    :goto_3
    if-ge v2, v4, :cond_b

    aget-char p1, v9, v2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_a

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object p1

    add-int v1, v7, v2

    aget-char v3, v9, v2

    aput-char v3, p1, v1

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {p1, v1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$RadioText;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    const-string p1, "RT endReceived"

    invoke-static {p1}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1, v5}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputendReceived(Lcom/android/server/RDSParser$RadioText;Z)V

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    add-int/2addr v7, v2

    invoke-static {p1, v7}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    :cond_b
    new-instance p1, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetbuffer_rt(Lcom/android/server/RDSParser$RadioText;)[C

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    const-string v1, "Radio Text Buffer: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "MonitorRDS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRadioText.receivedChar: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {p1, v0}, Lcom/android/server/RDSParser$RadioText;->isRTValid(I)Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result p1

    if-ne p1, v8, :cond_c

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1, v8}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fputlength(Lcom/android/server/RDSParser$RadioText;I)V

    :cond_c
    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {p1}, Lcom/android/server/RDSParser$RadioText;->validateBuffer()V

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {p1}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    :cond_d
    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetendReceived(Lcom/android/server/RDSParser$RadioText;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {p1}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$RadioText;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-static {v0}, Lcom/android/server/RDSParser$RadioText;->-$$Nest$fgetlength(Lcom/android/server/RDSParser$RadioText;)I

    move-result v0

    if-le p1, v0, :cond_12

    iget-object p0, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    invoke-virtual {p0}, Lcom/android/server/RDSParser$RadioText;->resetBuffer()V

    return-void

    :cond_e
    iget v0, p1, Lcom/android/server/ExtRDSData;->blerd:I

    if-ne v0, v1, :cond_f

    invoke-static {v3}, Lcom/android/server/RDSParser;->Log(Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p1, Lcom/android/server/ExtRDSData;->rdsb:[B

    aget-byte v0, v0, v5

    and-int/2addr v0, v1

    shl-int/2addr v0, v5

    :goto_5
    if-ge v2, v4, :cond_11

    iget-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v1}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v1

    add-int v3, v0, v2

    aget-char v1, v1, v3

    iget-object v6, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v6, v6, v2

    int-to-char v6, v6

    if-eq v1, v6, :cond_10

    iget-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v1}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetbuffer_ps(Lcom/android/server/RDSParser$ProgramService;)[C

    move-result-object v1

    iget-object v6, p1, Lcom/android/server/ExtRDSData;->rdsd:[B

    aget-byte v6, v6, v2

    int-to-char v6, v6

    aput-char v6, v1, v3

    iget-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-static {v1}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fgetreceivedChar(Lcom/android/server/RDSParser$ProgramService;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v1, v3}, Lcom/android/server/RDSParser$ProgramService;->-$$Nest$fputreceivedChar(Lcom/android/server/RDSParser$ProgramService;I)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_11
    iget-object p1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {p1}, Lcom/android/server/RDSParser$ProgramService;->isPSValid()Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {p1}, Lcom/android/server/RDSParser$ProgramService;->validateBuffer()V

    iget-object p0, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    invoke-virtual {p0}, Lcom/android/server/RDSParser$ProgramService;->resetBuffer()V

    :cond_12
    :goto_6
    return-void
.end method

.method public blacklist reset()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalRadioText:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/RDSParser;->mFinalProgramService:Ljava/lang/String;

    new-instance v1, Lcom/android/server/RDSParser$RadioText;

    invoke-direct {v1, p0}, Lcom/android/server/RDSParser$RadioText;-><init>(Lcom/android/server/RDSParser;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mRadioText:Lcom/android/server/RDSParser$RadioText;

    new-instance v1, Lcom/android/server/RDSParser$ProgramService;

    invoke-direct {v1, p0, v0}, Lcom/android/server/RDSParser$ProgramService;-><init>(Lcom/android/server/RDSParser;Lcom/android/server/RDSParser-IA;)V

    iput-object v1, p0, Lcom/android/server/RDSParser;->mProgramService:Lcom/android/server/RDSParser$ProgramService;

    return-void
.end method
