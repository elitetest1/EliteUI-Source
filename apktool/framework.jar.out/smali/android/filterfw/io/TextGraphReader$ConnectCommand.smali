.class Landroid/filterfw/io/TextGraphReader$ConnectCommand;
.super Ljava/lang/Object;
.source "TextGraphReader.java"

# interfaces
.implements Landroid/filterfw/io/TextGraphReader$Command;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterfw/io/TextGraphReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectCommand"
.end annotation


# instance fields
.field private blacklist mSourceFilter:Ljava/lang/String;

.field private blacklist mSourcePort:Ljava/lang/String;

.field private blacklist mTargetFilter:Ljava/lang/String;

.field private blacklist mTargetName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Landroid/filterfw/io/TextGraphReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iput-object p3, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iput-object p4, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iput-object p5, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public blacklist execute(Landroid/filterfw/io/TextGraphReader;)V
    .locals 3

    invoke-static {p1}, Landroid/filterfw/io/TextGraphReader;->-$$Nest$fgetmCurrentGraph(Landroid/filterfw/io/TextGraphReader;)Landroid/filterfw/core/FilterGraph;

    move-result-object p1

    iget-object v0, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourceFilter:Ljava/lang/String;

    iget-object v1, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mSourcePort:Ljava/lang/String;

    iget-object v2, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetFilter:Ljava/lang/String;

    iget-object p0, p0, Landroid/filterfw/io/TextGraphReader$ConnectCommand;->mTargetName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/filterfw/core/FilterGraph;->connect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
