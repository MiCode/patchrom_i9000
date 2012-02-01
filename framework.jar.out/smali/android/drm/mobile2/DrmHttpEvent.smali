.class public Landroid/drm/mobile2/DrmHttpEvent;
.super Ljava/lang/Object;
.source "DrmHttpEvent.java"


# instance fields
.field private body:[B

.field private bodylen:I

.field private event:I

.field private header:Ljava/lang/String;

.field private headerlen:I

.field private session:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBody()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->body:[B

    return-object v0
.end method

.method public getBodylen()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->bodylen:I

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->event:I

    return v0
.end method

.method public getHeader()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->header:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaderlen()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->headerlen:I

    return v0
.end method

.method public getSession()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->session:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/drm/mobile2/DrmHttpEvent;->status:I

    return v0
.end method

.method public setBody([B)V
    .locals 0
    .parameter "body"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->body:[B

    return-void
.end method

.method public setBodylen(I)V
    .locals 0
    .parameter "bodylen"

    .prologue
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->bodylen:I

    return-void
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->event:I

    return-void
.end method

.method public setHeader(Ljava/lang/String;)V
    .locals 0
    .parameter "header"

    .prologue
    iput-object p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->header:Ljava/lang/String;

    return-void
.end method

.method public setHeaderlen(I)V
    .locals 0
    .parameter "headerlen"

    .prologue
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->headerlen:I

    return-void
.end method

.method public setSession(I)V
    .locals 0
    .parameter "session"

    .prologue
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->session:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    iput p1, p0, Landroid/drm/mobile2/DrmHttpEvent;->status:I

    return-void
.end method
