.class public Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;
.super Ljava/lang/Object;
.source "PerfettoProtoLogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/protolog/PerfettoProtoLogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Message"
.end annotation


# instance fields
.field private final blacklist mMessageHash:Ljava/lang/Long;

.field private final blacklist mMessageMask:I

.field private final blacklist mMessageString:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMessageHash(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessageString(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetMessageMask(Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->getMessageMask()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>(JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    iput p3, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(JILcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(JI)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/protolog/common/InvalidFormatStringException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    invoke-static {p1}, Lcom/android/internal/protolog/common/LogDataType;->parseFormatString(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/protolog/common/LogDataType;->logDataTypesToBitMask(Ljava/util/List;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    iput-object p1, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Lcom/android/internal/protolog/PerfettoProtoLogImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getMessageMask()I
    .locals 0

    iget p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageMask:I

    return p0
.end method


# virtual methods
.method protected blacklist getMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    return-object p0
.end method

.method protected blacklist getMessage(Lcom/android/internal/protolog/ProtoLogViewerConfigReader;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageString:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/protolog/ProtoLogViewerConfigReader;->getViewerString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Both mMessageString and mMessageHash should never be null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist getMessageHash()Ljava/lang/Long;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/protolog/PerfettoProtoLogImpl$Message;->mMessageHash:Ljava/lang/Long;

    return-object p0
.end method
