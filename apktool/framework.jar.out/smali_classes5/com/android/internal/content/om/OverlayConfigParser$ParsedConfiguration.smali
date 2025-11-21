.class public Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
.super Ljava/lang/Object;
.source "OverlayConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/om/OverlayConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ParsedConfiguration"
.end annotation


# instance fields
.field public final blacklist enabled:Z

.field public final blacklist mutable:Z

.field public final blacklist packageName:Ljava/lang/String;

.field public final blacklist parsedConfigFile:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

.field public final blacklist parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

.field public final blacklist policy:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    iput-boolean p3, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    iput-object p4, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iput-object p6, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedConfigFile:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

    return-void
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v1, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v7, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedConfigFile:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;

    filled-new-array/range {v2 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "{packageName=%s, enabled=%s, mutable=%s, policy=%s, parsedInfo=%s, parsedConfigFile=%s}"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
