.class final Landroid/view/contentcapture/ContentCaptureManager$Dumper;
.super Ljava/lang/Object;
.source "ContentCaptureManager.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/contentcapture/ContentCaptureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Dumper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/view/contentcapture/ContentCaptureManager;


# direct methods
.method private constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/contentcapture/ContentCaptureManager;Landroid/view/contentcapture/ContentCaptureManager-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/contentcapture/ContentCaptureManager$Dumper;-><init>(Landroid/view/contentcapture/ContentCaptureManager;)V

    return-void
.end method


# virtual methods
.method public whitelist dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "ContentCaptureManager"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "  "

    iget-object v0, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmLock(Landroid/view/contentcapture/ContentCaptureManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "isContentCaptureEnabled(): "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager;->isContentCaptureEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Debug: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Z)V

    const-string v1, " Verbose: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v1, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Context: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "User: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmContext(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/contentcapture/ContentCaptureManager$StrippedContext;->getUserId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Service: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmService(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/IContentCaptureManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Flags: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmFlags(Landroid/view/contentcapture/ContentCaptureManager;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Options: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    iget-object v1, v1, Landroid/view/contentcapture/ContentCaptureManager;->mOptions:Landroid/content/ContentCaptureOptions;

    invoke-virtual {v1, p1}, Landroid/content/ContentCaptureOptions;->dumpShort(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v1, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {v1}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "    "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Main session:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Landroid/view/contentcapture/ContentCaptureManager$Dumper;->this$0:Landroid/view/contentcapture/ContentCaptureManager;

    invoke-static {p0}, Landroid/view/contentcapture/ContentCaptureManager;->-$$Nest$fgetmMainSession(Landroid/view/contentcapture/ContentCaptureManager;)Landroid/view/contentcapture/ContentCaptureSession;

    move-result-object p0

    invoke-virtual {p0, v1, p1}, Landroid/view/contentcapture/ContentCaptureSession;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "No sessions"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public whitelist getDumpableName()Ljava/lang/String;
    .locals 0

    const-string p0, "ContentCaptureManager"

    return-object p0
.end method
