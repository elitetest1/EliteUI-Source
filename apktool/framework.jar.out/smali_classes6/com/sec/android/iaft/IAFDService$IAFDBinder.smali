.class public Lcom/sec/android/iaft/IAFDService$IAFDBinder;
.super Lcom/sec/android/iaft/IIAFDService$Stub;
.source "IAFDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/iaft/IAFDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IAFDBinder"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/sec/android/iaft/IAFDService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    invoke-direct {p0}, Lcom/sec/android/iaft/IIAFDService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist IAFDParse(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object p0

    invoke-virtual/range {p0 .. p8}, Lcom/sec/android/iaft/IAFDDiagnosis;->parseExpType(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public blacklist IAFDShow(IILjava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/sec/android/iaft/IAFDDiagnosis;->getInstance()Lcom/sec/android/iaft/IAFDDiagnosis;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/sec/android/iaft/IAFDDiagnosis;->showIAFDCrashDialogs(IILjava/lang/String;)Z

    return-void
.end method
