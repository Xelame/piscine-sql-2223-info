SELECT InvoiceId, Name AS InvoiceItem, Tracks.UnitPrice FROM Invoice_items INNER JOIN Tracks ON Invoice_items.TrackId = Tracks.TrackId  WHERE InvoiceId = 10 ORDER BY InvoiceItem ASC;