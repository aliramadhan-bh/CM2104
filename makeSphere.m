function makeSphere(app)
    % Convert only the third circle into a sphere and ensure correct aspect ratio
    view(app.UIAxes, 3);
    hold(app.UIAxes, 'on');

    % Target circle name
    circleName = 'Third Circle';

    % Find the third circle line object
    h = findobj(app.UIAxes, 'DisplayName', circleName);
    if ~isempty(h) && isvalid(h)
        % Extract the circle coordinates
        xData = h.XData;
        yData = h.YData;

        % Compute center and radius of the circle
        xCenter = mean(xData);
        yCenter = mean(yData);
        radius = mean(sqrt((xData - xCenter).^2 + (yData - yCenter).^2));

        % Generate sphere coordinates
        [X, Y, Z] = sphere(50); % higher resolution for smoother sphere
        Xs = xCenter + radius * X;
        Ys = yCenter + radius * Y;
        Zs = radius * Z;  % Center sphere around z=0

        % Delete the original circle line
        delete(h);

        % Plot the sphere
        surf(app.UIAxes, Xs, Ys, Zs, 'EdgeColor', 'none', 'FaceAlpha', 0.6, 'DisplayName', circleName);

        % Ensure the sphere looks like a sphere (not an ellipsoid)
        app.UIAxes.DataAspectRatio = [1 1 1];
        app.UIAxes.DataAspectRatioMode = 'manual';

        % Optional: improve lighting and appearance
        shading(app.UIAxes, 'interp');
        camlight(app.UIAxes, 'headlight');
        lighting(app.UIAxes, 'gouraud');
    end

    hold(app.UIAxes, 'off');

end
